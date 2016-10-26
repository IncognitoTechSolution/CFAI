class CreateCohPayments < ActiveRecord::Migration
  def change
    create_table :coh_payments do |t|
      t.integer :report_id
      t.string :entity_id
      t.integer :expenditure_category_id
      t.integer :candidate_id
      t.integer :travel_id
      t.date :date
      t.float :amount
      t.text :description
      t.float :cptotal

      t.timestamps null: false
    end
  end
end
