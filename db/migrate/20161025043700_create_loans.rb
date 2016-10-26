class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.integer :report_id
      t.integer :transaction_id
      t.integer :entity_id
      t.integer :candidate_id
      t.date :date
      t.boolean :outofstatepac
      t.string :pacid
      t.float :amount
      t.decimal :interestrate
      t.decimal :maturitydate
      t.text :description
      t.boolean :personalfund
      t.float :amountguaranteed
      t.float :loantotal

      t.timestamps null: false
    end
  end
end
