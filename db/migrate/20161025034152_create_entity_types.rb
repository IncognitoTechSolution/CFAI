class CreateEntityTypes < ActiveRecord::Migration
  def change
    create_table :entity_types do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
