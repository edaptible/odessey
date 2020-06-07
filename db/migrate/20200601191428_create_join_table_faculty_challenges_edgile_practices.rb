class CreateJoinTableFacultyChallengesEdgilePractices < ActiveRecord::Migration[6.0]
  def change
    create_join_table :faculty_challenges, :edgile_practices do |t|
      t.references :faculty_challenges, null: false, foreign_key: true,
                    index: { name: :index_fac_challenges_id_in_fac_practices_join }
      t.references :edgile_practices, null: false, foreign_key: true,
                    index: { name: :index_edg_practices_id_in_fac_practices_join }

      t.index [:faculty_challenge_id, :edgile_practices_id], unique: true,
                    name: :unique_fac_challenges_practices_values
    end
  end
end
