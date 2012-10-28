class CreateAccommodationUnitrails < ActiveRecord::Migration
  def change
    create_table :accommodation_unitrails do |t|
      t.string :name
      t.string :contact_person
      t.string :tel_contact_person
      t.string :city
      t.string :street
      t.string :house_style
      t.string :house_number
      t.string :postal_code
      t.integer :amount_of_lebenshilfe_stars
      t.string :internetadress
      t.text :description
      t.decimal :price
      t.integer :amount_of_rooms
      t.string :email
      t.string :federal_state
      
      t.float :latitude
      t.float :longitude
      t.float :distance
      t.float :max_group_size
      t.boolean :horse_riding
      t.boolean :bowling
      t.boolean :table_tennis
      t.boolean :kicker
      t.boolean :playground
      
      t.boolean :bedding
      t.boolean :grouproom
      t.boolean :internet
      t.boolean :dvd_player
      t.boolean :music_station
      t.boolean :television
      t.boolean :beamer
      
      t.boolean :natatorium
      t.boolean :outdoor_swimming_bath
      
      t.boolean :barrier_free
      t.boolean :wheelchair_accessible_bed
      t.boolean :coster_bed
      t.boolean :lifter
      t.boolean :weelchair_restricted
      
      t.boolean :public_transfer
      t.boolean :public_transfer_weelchair
      t.boolean :shopping_facilities
      t.boolean :care_service
      
      t.boolean :self_supply
      t.boolean :full_board
      t.boolean :half_board
      t.boolean :grill_area
      t.boolean :campfire_area
      t.boolean :football_area
      t.boolean :gym
      t.boolean :summer_coast
      t.boolean :winter_suitable
      t.boolean :one_person_beth_rooms
      t.boolean :two_person_beth_rooms
      t.boolean :more_person_beth_rooms
      t.timestamps
    end
    
      create_table :photos do |t| 
      t.string :description 
      t.string :content_type 
      t.string :filename 
      t.binary :binary_data
      t.integer :accommodation_id
      end
      
      create_table :links do |t| 
      t.string :description 
      t.string :name
      t.string :link
      t.integer :accommodation_id  
   end
    
      create_table :config_values do |t| 
        t.string :name
        t.string :topic
        t.string :value
      end

  end
  

end
