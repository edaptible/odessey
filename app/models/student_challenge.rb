class StudentChallenge < ApplicationRecord

  include ModelsMixin

  has_many :agile_values,     dependent: :destroy
  has_many :agile_principles, dependent: :destroy
  has_many :edgile_values,    dependent: :destroy
  has_many :edgile_practices, dependent: :destroy

  belongs_to :challenge_level

  # write-up can handle photos
  has_rich_text :student_coaching_ideas
  has_rich_text :student_challenge_write_up

  validates :student_challenge_name, uniqueness: true

  def to_s
    student_challenge_name.to_s
  end

  # # semi-pretty url i.e. 1-english-for-everyone
  # def to_param
  #   return nil unless persisted?
  #   slug = self.to_s.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
  #   [id, slug].join('-')
  # end

end
