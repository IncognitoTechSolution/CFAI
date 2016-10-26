class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.integer :report_id
      t.integer :transaction_id
      t.integer :entity_id
      t.date :date
      t.boolean :outofstatepac
      t.string :pacid
      t.float :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
