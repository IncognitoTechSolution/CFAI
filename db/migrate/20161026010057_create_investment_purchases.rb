class CreateInvestmentPurchases < ActiveRecord::Migration
  def change
    create_table :investment_purchases do |t|
      t.integer :report_id
      t.integer :entity_id
      t.integer :expend_type_id
      t.integer :transaction_id
      t.integer :candidate_id
      t.date :date
      t.float :amount
      t.text :description
      t.float :iptotal

      t.timestamps null: false
    end
  end
end
