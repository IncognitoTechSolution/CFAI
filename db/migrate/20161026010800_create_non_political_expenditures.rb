class CreateNonPoliticalExpenditures < ActiveRecord::Migration
  def change
    create_table :non_political_expenditures do |t|
      t.integer :report_id
      t.integer :entity_id
      t.integer :expenditure_category_id
      t.integer :transaction_id
      t.date :date
      t.text :purpose
      t.float :amount
      t.float :npetotal

      t.timestamps null: false
    end
  end
end
