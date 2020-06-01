class CreateJoinTableStudentChallengesEdgilePractices < ActiveRecord::Migration[6.0]
  def change
    create_join_table :student_challenges, :edgile_practices do |t|
      t.references :student_challenges, null: false, foreign_key: true,
                    index: { name: :index_stu_challenges_id_in_stu_practices_join }
      t.references :edgile_practices, null: false, foreign_key: true,
                    index: { name: :index_edg_practices_id_in_stu_practices_join }

      t.index [:student_challenge_id, :edgile_practice_id], unique: true,
                    name: :unique_stu_challenges_n_edg_practices
    end
  end
end
