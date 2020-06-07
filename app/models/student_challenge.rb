class StudentChallenge < ApplicationRecord

  has_many :agile_concepts
  has_many :edgile_values
  has_many :edgile_practices

  belongs_to :challenge_level

  # write-up can handle photos
  has_rich_text :student_coaching_ideas
  has_rich_text :student_challenge_description

  validates :student_challenge_name, uniqueness: true

  # semi-pretty url i.e. 1-english-for-everyone
  def to_param
    return nil unless persisted?
    slug = student_challenge_name.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
    [id, slug].join('-')
  end

end
