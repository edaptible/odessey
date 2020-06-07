class StudentChallengeLevel < ApplicationRecord

  has_many :student_challenges, dependent: :destroy

  validates :student_challenge_level_name, uniqueness: true

  # semi-pretty url i.e. 1-english-for-everyone
  def to_param
    return nil unless persisted?
    slug = student_challenge_level_name.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
    [id, slug].join('-')
  end

end
