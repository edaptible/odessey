class Challenge < ApplicationRecord

  belongs_to :challenge_level
  has_many :agile_concepts
  has_many :edgile_values
  has_many :edgile_practices
  has_one_attached :challenge_image

end
