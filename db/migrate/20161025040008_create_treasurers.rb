class CreateTreasurers < ActiveRecord::Migration
  def change
    create_table :treasurers do |t|
      t.integer :address_type_id
      t.integer :prefix_id
      t.string :firstname
      t.string :mi
      t.string :lastname
      t.string :alias
      t.string :suffix
      t.boolean :addresschange
      t.string :address
      t.string :suite
      t.string :city
      t.integer :state_id
      t.string :zipcode
      t.string :phone
      t.string :ext

      t.timestamps null: false
    end
  end
end
