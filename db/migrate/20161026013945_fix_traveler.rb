class FixTraveler < ActiveRecord::Migration
  def change
    rename_column :travelers, :trvael_id, :travel_id
  end
end
