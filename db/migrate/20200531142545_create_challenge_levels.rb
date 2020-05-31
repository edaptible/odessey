class CreateChallengeLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :challenge_levels do |t|
      t.string :challenge_name
      t.string :challenge_difficulty

      t.timestamps
    end
  end
end
