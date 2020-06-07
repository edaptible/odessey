class CreateCohorts < ActiveRecord::Migration[6.0]
  def change
    create_table :cohorts do |t|
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
