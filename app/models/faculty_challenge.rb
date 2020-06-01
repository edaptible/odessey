class FacultyChallenge < ApplicationRecord

  belongs_to :challenge_level

  has_many :agile_concepts
  has_many :edgile_values
  has_many :edgile_practices

  has_rich_text :faculty_time_commitment
  has_rich_text :faculty_prerequisits
  has_rich_text :faculty_instructions
  has_rich_text :faculty_coaching_ideas

  has_one_attached :faculty_challenge_image

end
