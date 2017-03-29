class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :super_admin_role, :boolean, default: false, index: true
    add_column :users, :user_role, :boolean, default: false, index: true
  end
end
