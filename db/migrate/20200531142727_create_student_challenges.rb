class CreateStudentChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :student_challenges do |t|
      t.string     :student_challenge_name

      t.references :student_challenge_level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
