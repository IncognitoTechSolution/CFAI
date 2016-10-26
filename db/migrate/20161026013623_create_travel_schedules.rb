class CreateTravelSchedules < ActiveRecord::Migration
  def change
    create_table :travel_schedules do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
