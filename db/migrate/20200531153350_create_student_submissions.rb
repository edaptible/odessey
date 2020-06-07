class CreateStudentSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :student_submissions do |t|
      t.references :student_challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
