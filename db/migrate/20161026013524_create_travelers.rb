class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.integer :trvael_id
      t.string :firstname
      t.string :lastname

      t.timestamps null: false
    end
  end
end
