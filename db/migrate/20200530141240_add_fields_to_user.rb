class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column    :users, :user_role,  :string, null: false, default: "student"
    rename_column :users, :email, :username

    add_reference :users, :school, null: false, foreign_key: true #, index: true
  end
end
