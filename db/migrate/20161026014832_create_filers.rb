class CreateFilers < ActiveRecord::Migration
  def change
    create_table :filers do |t|
      t.integer :filer_type_id
      t.integer :state_id
      t.string :firstname
      t.string :mi
      t.string :lastname
      t.string :committee
      t.string :address
      t.string :addresstwo
      t.string :suite
      t.string :city
      t.string :zipcode
      t.string :phone
      t.string :ext
      t.string :email
      t.string :releasepasswordto
      t.string :emailreleasepassword
      t.date :receivedate
      t.boolean :active

      t.timestamps null: false
    end
  end
end
