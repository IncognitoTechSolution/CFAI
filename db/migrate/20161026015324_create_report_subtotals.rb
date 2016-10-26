class CreateReportSubtotals < ActiveRecord::Migration
  def change
    create_table :report_subtotals do |t|
      t.integer :report_id
      t.integer :coh_payment_id
      t.integer :credit_id
      t.integer :expenditure_category_id
      t.integer :expenditure_id
      t.integer :investment_purchase_id
      t.integer :loan_id
      t.integer :monetary_contribution_id
      t.integer :non_monetary_contribution_id
      t.integer :non_political_expenditure_id
      t.integer :pledge_id
      t.integer :unpaid_incurred_obligation_id

      t.timestamps null: false
    end
  end
end
