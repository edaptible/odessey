class CreateFacultyDevelopmentGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :faculty_development_groups do |t|
      t.string :development_grouping_name

      t.timestamps
    end
  end
end
