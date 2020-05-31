class CreateJoinTableChallengesAgileConcepts < ActiveRecord::Migration[6.0]
  def change
    create_join_table :challenges, :agile_concepts do |t|
      t.references :challenges, null: false, foreign_key: true
      t.references :agile_concepts, null: false, foreign_key: true
    end
  end
end
