class CreateJoinTableFacultyChallengesAgileValues < ActiveRecord::Migration[6.0]
  def change
    create_join_table :faculty_challenges, :agile_values do |t|
      t.references :faculty_challenges, null: false, foreign_key: true,
                    index: { name: :index_fac_chlng_id_in_fac_agile_val_join }
      t.references :agile_values, null: false, foreign_key: true,
                    index: { name: :index_agile_id_in_fac_agile_val_join }

      t.index [:faculty_challenge_id, :agile_value_id], unique: true,
                    name: :unique_fac_challenges_agile_values
    end
  end
end
