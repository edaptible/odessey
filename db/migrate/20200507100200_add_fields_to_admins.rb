class AddFieldsToAdmins < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :first_name, :string, null: false
    add_column :admins, :last_name,  :string, null: false
    add_column :admins, :admin_role, :string, null: false, default: "school_coord"
  end
end
