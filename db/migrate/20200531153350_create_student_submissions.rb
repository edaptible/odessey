class CreateStudentSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :student_submissions do |t|
      t.string   :student_submission_name, null: false
      t.references :student_challenge,     null: false, foreign_key: true

      t.timestamps

      t.index :student_submission_name,    unique: true
    end
  end
end
