class CreateAccommodationUnitrails < ActiveRecord::Migration
  def change
    create_table :accommodation_unitrails do |t|

      t.string :name
      t.string :contact_person
      t.string :tel_contact_person
      t.string :city
      t.string :street
      t.integer :house_number
      t.integer :postal_code
      t.integer :amount_of_lebenshilfe_stars
      t.string :internetadress
      t.text :description
      t.decimal :price
      t.integer :amount_of_rooms
      t.string :email
      
      t.float :latitude
      t.float :longitude
      t.float :distance
      
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
      
      t.boolean :public_transfer
      t.boolean :public_transfer_weelchair
      t.boolean :shopping_facilities
      t.boolean :care_service
      
      t.boolean :self_supply
      t.boolean :full_board
      t.timestamps
    end
  end
end
