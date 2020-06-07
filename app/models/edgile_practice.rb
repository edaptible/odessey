class EdgilePractice < ApplicationRecord

  has_many :student_challenges, dependent: :destroy

  validates :edgile_practice_name, uniqueness: true

  # semi-pretty url i.e. 1-english-for-everyone
  def to_param
    return nil unless persisted?
    slug = edgile_practice_name.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
    [id, slug].join('-')
  end

end
