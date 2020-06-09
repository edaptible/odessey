class CreateFacultyChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :faculty_challenges do |t|
      t.string     :faculty_challenge_name,      null: false
      t.boolean    :faculty_development_is_demo, null: false, default: false

      t.references :faculty_development_group,   null: false, foreign_key: true

      t.timestamps
    end
  end
end
