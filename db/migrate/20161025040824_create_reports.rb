class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :report_type_id
      t.string :submitdate
      t.integer :filer_id
      t.string :filename
      t.string :origin
      t.string :campaignyear
      t.boolean :ontime
      t.string :signature

      t.timestamps null: false
    end
  end
end
