class CreateOfficeSoughts < ActiveRecord::Migration
  def change
    create_table :office_soughts do |t|
      t.string :category

      t.timestamps null: false
    end
  end
end
