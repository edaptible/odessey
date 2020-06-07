class StudentSubmission < ApplicationRecord

  belongs_to :user
  belongs_to :student_challenge

  has_rich_text :student_challenge_submission

  validates :student_submission_name, uniqueness: true

  # semi-pretty url i.e. 1-english-for-everyone
  def to_param
    return nil unless persisted?
    slug = student_submission_name.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
    [id, slug].join('-')
  end

end
