class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.integer :report_id
      t.integer :transaction_id
      t.integer :entity_id
      t.date :date
      t.float :amount
      t.text :description
      t.boolean :return
      t.float :returntotal

      t.timestamps null: false
    end
  end
end
