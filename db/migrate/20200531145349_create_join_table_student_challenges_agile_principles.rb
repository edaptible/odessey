class CreateJoinTableStudentChallengesAgilePrinciples < ActiveRecord::Migration[6.0]
  def change
    create_join_table :student_challenges, :agile_principles do |t|
      t.references :student_challenges, null: false, foreign_key: true,
                    index: { name: :index_stu_chlng_id_in_stu_agile_princ_join }
      t.references :agile_principles, null: false, foreign_key: true,
                    index: { name: :index_agile_id_in_stu_agile_princ_join }

      t.index [:student_challenge_id, :agile_principle_id], unique: true,
                    name: :unique_stu_challenges_agile_principles
    end
  end
end
