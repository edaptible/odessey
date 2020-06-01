class CreateJoinTableStudentChallengesEdgileValues < ActiveRecord::Migration[6.0]
  def change
    create_join_table :student_challenges, :edgile_values do |t|
      t.references :student_challenges, null: false, foreign_key: true,
                    index: { name: :index_stu_challenges_id_in_stu_values_join }
      t.references :edgile_values, null: false, foreign_key: true,
                    index: { name: :index_edg_values_id_in_stu_values_join }

      t.index [:student_challenge_id, :edgile_value_id], unique: true,
                    name: :unique_stu_challenges_edg_values
    end
  end
end
