class CreateCoversheets < ActiveRecord::Migration
  def change
    create_table :coversheets do |t|
      t.integer :report_id
      t.integer :treasurer_id
      t.string :periodbegin
      t.string :periodend
      t.string :electiondate
      t.integer :election_type_id
      t.integer :office_held_id
      t.integer :office_sought_id

      t.timestamps null: false
    end
  end
end
