class EdgilePractice < ApplicationRecord

  has_many :student_challenges, dependent: :destroy

end
