class UserFiler < ActiveRecord::Migration
  def change
    add_column :Users, :filer_id, :integer
  end
end
