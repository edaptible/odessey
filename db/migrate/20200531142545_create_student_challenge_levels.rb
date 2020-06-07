class CreateStudentChallengeLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :student_challenge_levels do |t|
      t.string  :student_level_name,   null: false
      t.integer :student_level_points, null: false, default: 0

      t.timestamps
    end
  end
end
