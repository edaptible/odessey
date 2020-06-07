class CreateAgileConcepts < ActiveRecord::Migration[6.0]
  def change
    create_table :agile_concepts do |t|
      t.string :agile_concept_name, null: false

      t.timestamps

      t.index :agile_concept_name,  unique: true
    end
  end
end
