class AccommodationUnitrailsController < ApplicationController
  # GET /accommodation_unitrails
  # GET /accommodation_unitrails.json
  def index
    @accommodation_unitrails = AccommodationUnitrail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accommodation_unitrails }
    end
  end

  # GET /accommodation_unitrails/1
  # GET /accommodation_unitrails/1.json
  def show
    @accommodation_unitrail = AccommodationUnitrail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accommodation_unitrail }
    end
  end

  # GET /accommodation_unitrails/new
  # GET /accommodation_unitrails/new.json
  def new
    @accommodation_unitrail = AccommodationUnitrail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accommodation_unitrail }
    end
  end

  # GET /accommodation_unitrails/1/edit
  def edit
    @accommodation_unitrail = AccommodationUnitrail.find(params[:id])
  end

  # POST /accommodation_unitrails
  # POST /accommodation_unitrails.json
  def create
    @accommodation_unitrail = AccommodationUnitrail.new(params[:accommodation_unitrail])

    respond_to do |format|
      if @accommodation_unitrail.save
        format.html { redirect_to @accommodation_unitrail, notice: 'Accommodation unitrail was successfully created.' }
        format.json { render json: @accommodation_unitrail, status: :created, location: @accommodation_unitrail }
      else
        format.html { render action: "new" }
        format.json { render json: @accommodation_unitrail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /accommodation_unitrails/1
  # PUT /accommodation_unitrails/1.json
  def update
    @accommodation_unitrail = AccommodationUnitrail.find(params[:id])

    respond_to do |format|
      if @accommodation_unitrail.update_attributes(params[:accommodation_unitrail])
        format.html { redirect_to @accommodation_unitrail, notice: 'Accommodation unitrail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @accommodation_unitrail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accommodation_unitrails/1
  # DELETE /accommodation_unitrails/1.json
  def destroy
    @accommodation_unitrail = AccommodationUnitrail.find(params[:id])
    @accommodation_unitrail.destroy

    respond_to do |format|
      format.html { redirect_to accommodation_unitrails_url }
      format.json { head :no_content }
    end
  end
end
