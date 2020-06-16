class CreateJoinTableStudentChallengesAgileValues < ActiveRecord::Migration[6.0]
  def change
    create_join_table :student_challenges, :agile_values do |t|
      t.references :student_challenges, null: false, foreign_key: true,
                    index: { name: :index_stu_chlng_id_in_stu_agile_val_join }
      t.references :agile_values, null: false, foreign_key: true,
                    index: { name: :index_agile_id_in_stu_agile_val_join }

      t.index [:student_challenge_id, :agile_value_id], unique: true,
                    name: :unique_stu_challenges_agile_values
    end
  end
end
