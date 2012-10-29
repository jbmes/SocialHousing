class AddIdToLink < ActiveRecord::Migration
  def change
    add_column :links, :accommodation_unitrail_id, :integer

  end
end
