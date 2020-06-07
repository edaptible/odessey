class StudentChallenge < ApplicationRecord

  has_many :agile_concepts
  has_many :edgile_values
  has_many :edgile_practices

  belongs_to :challenge_level

  # write-up can handle photos
  has_rich_text :student_coaching_ideas
  has_rich_text :student_challenge_description

end
