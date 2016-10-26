class CreateFilerTypes < ActiveRecord::Migration
  def change
    create_table :filer_types do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
