class CreateUnpaidIncurredObligations < ActiveRecord::Migration
  def change
    create_table :unpaid_incurred_obligations do |t|
      t.integer :report_id
      t.integer :entity_id
      t.integer :transaction_id
      t.integer :expenditure_category_id
      t.integer :candidate_id
      t.integer :travel_id
      t.integer :expend_type_id
      t.text :description
      t.date :date
      t.float :amount
      t.float :uitotal

      t.timestamps null: false
    end
  end
end
