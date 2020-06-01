class CreateJoinTableStudentChallengesAgileConcepts < ActiveRecord::Migration[6.0]
  def change
    create_join_table :student_challenges, :agile_concepts do |t|
      t.references :student_challenges, null: false, foreign_key: true,
                    index: { name: :index_stu_challenges_id_in_stu_agile_join }
      t.references :agile_concepts, null: false, foreign_key: true,
                    index: { name: :index_agile_id_in_stu_agile_join }

      t.index [:student_challenge_id, :agile_concept_id], unique: true,
                    name: :unique_stu_challenges_agile_concepts
    end
  end
end
