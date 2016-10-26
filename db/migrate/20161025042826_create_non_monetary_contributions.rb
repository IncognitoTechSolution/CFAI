class CreateNonMonetaryContributions < ActiveRecord::Migration
  def change
    create_table :non_monetary_contributions do |t|
      t.integer :report_id
      t.integer :transaction_id
      t.integer :entity_id
      t.integer :travel_id
      t.integer :candidate_id
      t.date :date
      t.boolean :outofstatepac
      t.string :pacid
      t.float :amount
      t.text :description
      t.float :nmctotal

      t.timestamps null: false
    end
  end
end
