class AddNameAndAdminToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :admin, :boolean
  end

  def self.down
    remove_column :users, :admin
    remove_column :users, :name
  end
end
