require "helper/create_unit_from_form"
class CreateNewEntryController < ApplicationController
  include CreateUnitFromForm
  
  def initialize
    @dresden_latitude = 51.050957
    @dresden_longitude = 13.733658
  end

  def new_entry
    @accommodation_unitrail = AccommodationUnitrail.new
    4.times { @accommodation_unitrail.links.build }
  end
  
  def get_data_from_form
        #id = CreateUnitFromForm::create_entry_from_formdata(params)
       params[:accommodation_unitrail].delete  :user_id
       
       
       foto_bedplan = reactforPics(params,"bedplan")
       foto_foto = reactforPics(params,"foto")
       
       
       @accommodation_unitrail = AccommodationUnitrail.create(params[:accommodation_unitrail])
       adress = params[:accommodation_unitrail][:city] + " " + params[:accommodation_unitrail][:street] + " " + params[:accommodation_unitrail][:house_number].to_s + " " + params[:accommodation_unitrail][:postal_code].to_s
       geo_vals = Geocoder.coordinates(adress.to_s)
       
       unless geo_vals.nil?
         distance = calculate_distance(geo_vals[0], geo_vals[1], @dresden_latitude.to_f, @dresden_longitude.to_f)
         @accommodation_unitrail.latitude = geo_vals[0]
         @accommodation_unitrail.longitude = geo_vals[1]
         @accommodation_unitrail.distance = distance
         @accommodation_unitrail.save!
       end
        
        unless foto_bedplan.nil?
          foto_bedplan.accommodation_id = @accommodation_unitrail.id
          foto_bedplan.save
        end
        unless foto_foto.nil?
          foto_foto.accommodation_id = @accommodation_unitrail.id
          foto_foto.save
        end
       redirect_to :controller => "entry", :action => "show_entry", :id => @accommodation_unitrail.id
    
  end


  def calculate_distance(latitude_1, longitude_1,latitude_2, longitude_2)
    #mit distance: Entfernung in km
    lat = (latitude_1 + latitude_2) / 2 * 0.01745
    dx = 111.3 * Math.cos(lat) * (longitude_1 - longitude_2)
    dy = 111.3 * (latitude_1 - latitude_2)
    #lat1, lat2, lon1, lon2: Breite, Länge in Grad
    distance = Math.sqrt(dx * dx + dy * dy)
  end
  
    def reactforPics(params,piccategory)
    unless params[:accommodation_unitrail][piccategory].nil?
      pic = Photo.find(:all, :conditions => { :accommodation_id => params[:id], :category => piccategory })
       unless pic.nil?

         pic.each do |entry|
       Photo.find_by_id(entry.id).destroy
     end
       end
       @photo = Photo.new
       @photo.category = piccategory
       file_param = params[:accommodation_unitrail][piccategory]
       @photo.content_type = file_param.content_type
       @photo.filename = file_param.original_filename
       @photo.binary_data = file_param.read
       @photo.save
       
      params[:accommodation_unitrail].delete  piccategory
      @photo
    end
  end
  


end
