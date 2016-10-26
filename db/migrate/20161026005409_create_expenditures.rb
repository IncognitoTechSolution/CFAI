class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.integer :report_id
      t.integer :entity_id
      t.integer :transaction_id
      t.integer :payment_method_id
      t.integer :travel_id
      t.integer :candidate_id
      t.integer :expen_category_id
      t.integer :expend_type_id
      t.date :date
      t.float :amount
      t.text :purpose
      t.float :expendituretotal

      t.timestamps null: false
    end
  end
end
