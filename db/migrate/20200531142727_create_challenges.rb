class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :challenge_name
      t.text :time_commitment
      t.text :prerequisits
      t.text :student_instructions
      t.text :faculty_coaching_notes
      t.references :challenge_level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
