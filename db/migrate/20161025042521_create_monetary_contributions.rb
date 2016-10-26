class CreateMonetaryContributions < ActiveRecord::Migration
  def change
    create_table :monetary_contributions do |t|
      t.integer :report_id
      t.integer :transaction_id
      t.integer :entity_id
      t.integer :entity_type_id
      t.integer :candidate_id
      t.boolean :outofstatepac
      t.string :pacid
      t.date :date
      t.float :amount
      t.text :description
      t.float :mctotal

      t.timestamps null: false
    end
  end
end
