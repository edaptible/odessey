class CreateStudentChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :student_challenges do |t|
      t.string :student_challenge_name
      # t.text :student_time_commitment
      # t.text :student_prerequisits
      # t.text :student_instructions
      # t.text :student_coaching_notes
      t.references :challenge_level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
