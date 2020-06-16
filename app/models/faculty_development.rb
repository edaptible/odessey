class FacultyDevelopment < ApplicationRecord

  include ModelsMixin

  has_many :agile_values,     dependent: :destroy
  has_many :agile_principles, dependent: :destroy
  has_many :edgile_values,    dependent: :destroy
  has_many :edgile_practices, dependent: :destroy

  belongs_to :faculty_development_group

  has_rich_text :faculty_coaching_ideas
  has_rich_text :faculty_development_write_up

  validates :faculty_development_name, uniqueness: true

  def to_s
    faculty_development_name.to_s
  end

  # # semi-pretty url i.e. 1-english-for-everyone
  # def to_param
  #   return nil unless persisted?
  #   slug = self.to_s.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
  #   [id, slug].join('-')
  # end

end
