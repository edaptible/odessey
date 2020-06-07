class StudentChallengeLevel < ApplicationRecord

  has_many :student_challenges, dependent: :destroy

end
