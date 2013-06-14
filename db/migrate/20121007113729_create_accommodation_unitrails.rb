class CreateAccommodationUnitrails < ActiveRecord::Migration
  def change
    create_table :accommodation_unitrails do |t|
      t.string :name
      t.string :contact_person
      t.string :tel_contact_person
      t.string :city
      t.string :street
      t.string :kind_of_house
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
      t.string  :public_transfer_note
      t.boolean :public_transfer_weelchair
      t.string :public_transfer_weelchair_note
      t.boolean :shopping_facilities
      t.boolean :care_service
      t.string :care_service_note

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
      t.boolean :minigolf
      t.boolean :sauna
      t.boolean :fitness
      t.boolean :bicycle
      t.boolean :archery
      t.boolean :climbing
      t.boolean :wander
      t.boolean :paddle
      t.boolean :ski
      t.boolean :snowshoerunning
      t.boolean :animals
      t.boolean :drumcircle
      t.boolean :music
      t.boolean :senseparcur
      t.boolean :nature_trail
      t.boolean :kneip
      t.boolean :tinker
      t.boolean :pottery
      t.boolean :frisk
      t.boolean :glassblowing
      t.boolean :paint

      t.timestamps
    end

      create_table :photos do |t|
      t.string :description
      t.string :content_type
      t.string :category
      t.string :filename
      t.binary :binary_data
      t.integer :accommodation_id
      end

      create_table "links", :force => true do  |t|
      t.string :description
      t.string :name
      t.string :link
     # t.integer :accommodation_unitrail_id
      end

      create_table "basket", :force => true do |t|
        t.integer "accommodation_unitrail_id"
      end

      create_table "config_values", :force => true do |t|
    t.string "name"
    t.string "topic"
    t.string "value"
  end

  end


end
