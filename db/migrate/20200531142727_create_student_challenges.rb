class CreateStudentChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :student_challenges do |t|
      t.string     :student_challenge_name,    null: false
      t.boolean    :student_challenge_is_demo, null: false, default: false
      t.references :student_challenge_level,   null: false, foreign_key: true

      t.timestamps

      t.index :student_challenge_name, unique: true
    end
  end
end
