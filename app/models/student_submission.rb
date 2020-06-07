class StudentSubmission < ApplicationRecord

  belongs_to :user
  belongs_to :student_challenge

  has_rich_text :student_challenge_submission

end
