class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.integer :entity_type_id
      t.integer :prefix_id
      t.string :firstname
      t.string :mi
      t.string :lastname
      t.string :suffix
      t.string :address
      t.string :addresstwo
      t.string :suite
      t.integer :state_id
      t.string :city
      t.string :zipcode
      t.string :occupation
      t.string :comporg
      t.boolean :addresschange

      t.timestamps null: false
    end
  end
end
