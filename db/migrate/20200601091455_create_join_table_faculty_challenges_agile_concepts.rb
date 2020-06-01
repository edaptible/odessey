class CreateJoinTableFacultyChallengesAgileConcepts < ActiveRecord::Migration[6.0]
  def change
    create_join_table :faculty_challenges, :agile_concepts do |t|
      t.references :faculty_challenges, null: false, foreign_key: true,
                    index: { name: :index_fac_challenges_id_in_fac_agile_join }
      t.references :agile_concepts, null: false, foreign_key: true,
                    index: { name: :index_agile_id_in_fac_agile_join }

      t.index [:faculty_challenge_id, :agile_concept_id], unique: true,
                    name: :unique_fac_challenges_agile_concepts
    end
  end
end
