class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.integer :report_id
      t.integer :entity_id
      t.integer :candidate_id
      t.integer :travel_schedule_id
      t.text :purpose
      t.date :travelbegin
      t.date :travelend
      t.string :transportation
      t.string :departureloc
      t.string :destinationloc

      t.timestamps null: false
    end
  end
end
