class CreateExpenditureCategories < ActiveRecord::Migration
  def change
    create_table :expenditure_categories do |t|
      t.string :category

      t.timestamps null: false
    end
  end
end
