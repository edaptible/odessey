class CreateJoinTableChallengesEdgileValues < ActiveRecord::Migration[6.0]
  def change
    create_join_table :challenges, :edgile_values do |t|
      t.references :challenges, null: false, foreign_key: true
      t.references :edgile_values, null: false, foreign_key: true
    end
  end
end
