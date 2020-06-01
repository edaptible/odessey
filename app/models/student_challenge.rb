class StudentChallenge < ApplicationRecord

  belongs_to :challenge_level

  has_many :agile_concepts
  has_many :edgile_values
  has_many :edgile_practices

  has_one_attached :student_challenge_image

  has_rich_text :student_time_commitment
  has_rich_text :student_prerequisits
  has_rich_text :student_instructions
  has_rich_text :student_coaching_ideas

end
