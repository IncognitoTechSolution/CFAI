class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.integer :prefix_id
      t.integer :office_held_id
      t.integer :office_sought_id
      t.string :firstname
      t.string :mi
      t.string :lastname
      t.string :alias
      t.string :suffix
      t.boolean :addresschange
      t.string :address
      t.string :apptsuitenum
      t.string :city
      t.integer :state_id
      t.string :zipcode
      t.string :phone
      t.string :ext

      t.timestamps null: false
    end
  end
end
