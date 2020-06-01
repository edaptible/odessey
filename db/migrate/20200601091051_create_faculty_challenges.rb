class CreateFacultyChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :faculty_challenges do |t|
      t.string :faculty_challenge_name
      # t.text :faculty_time_commitment
      # t.text :faculty_prerequisits
      # t.text :faculty_instructions
      # t.text :faculty_coaching_notes

      t.references :challenge_level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
