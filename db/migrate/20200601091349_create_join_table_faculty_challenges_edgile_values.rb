class CreateJoinTableFacultyChallengesEdgileValues < ActiveRecord::Migration[6.0]
  def change
    create_join_table :faculty_challenges, :edgile_values do |t|
      t.references :faculty_challenges, null: false, foreign_key: true,
                    index: { name: :index_fac_challenges_id_in_fac_values_join }
      t.references :edgile_values, null: false, foreign_key: true,
                    index: { name: :index_edg_values_id_in_fac_values_join }

      t.index [:faculty_challenge_id, :edgile_value_id], unique: true,
                    name: :unique_fac_challenges_edg_values
    end
  end
end
