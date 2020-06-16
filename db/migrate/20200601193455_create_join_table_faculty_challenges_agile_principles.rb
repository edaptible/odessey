class CreateJoinTableFacultyChallengesAgilePrinciples < ActiveRecord::Migration[6.0]
  def change
    create_join_table :faculty_challenges, :agile_principles do |t|
      t.references :faculty_challenges, null: false, foreign_key: true,
                    index: { name: :index_fac_chlng_id_in_fac_agile_princ_join }
      t.references :agile_principles, null: false, foreign_key: true,
                    index: { name: :index_agile_id_in_fac_agile_princ_join }

      t.index [:faculty_challenge_id, :agile_principle_id], unique: true,
                    name: :unique_fac_challenges_agile_principles
    end
  end
end
