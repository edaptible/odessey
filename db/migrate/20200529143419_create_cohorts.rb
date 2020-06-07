class CreateCohorts < ActiveRecord::Migration[6.0]
  def change
    create_table :cohorts do |t|
      t.string :cohort_name, null: false
      t.references :school,  null: false, foreign_key: true

      t.timestamps

      t.index :cohort_name,  unique: true
    end
  end
end
