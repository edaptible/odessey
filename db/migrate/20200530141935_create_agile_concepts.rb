class CreateAgileConcepts < ActiveRecord::Migration[6.0]
  def change
    create_table :agile_concepts do |t|
      t.string :concept_name

      t.timestamps
    end
  end
end
