class CreateOfficeHelds < ActiveRecord::Migration
  def change
    create_table :office_helds do |t|
      t.string :category

      t.timestamps null: false
    end
  end
end
