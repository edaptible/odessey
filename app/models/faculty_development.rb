class FacultyDevelopment < ApplicationRecord

  has_many :agile_concepts,   dependent: :destroy
  has_many :edgile_values,    dependent: :destroy
  has_many :edgile_practices, dependent: :destroy

  belongs_to :faculty_development_group

  has_rich_text :faculty_coaching_ideas
  has_rich_text :faculty_development_description

  validates :faculty_development_name, uniqueness: true

  # semi-pretty url i.e. 1-english-for-everyone
  def to_param
    return nil unless persisted?
    slug = faculty_development_name.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
    [id, slug].join('-')
  end

end
