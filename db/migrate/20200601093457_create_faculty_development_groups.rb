class CreateFacultyDevelopmentGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :faculty_development_groups do |t|
      t.string :faculty_development_group_name, null: false

      t.timestamps

      t.index :faculty_development_group_name, unique: true,
              name: :unique_faculty_development_group_name
    end
  end
end
