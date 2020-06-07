class AgileConcept < ApplicationRecord

  has_many :student_challenges, dependent: :destroy

  validates :agile_concept_name, uniqueness: true

  # semi-pretty url i.e. 1-english-for-everyone
  def to_param
    return nil unless persisted?
    slug = agile_concept_name.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
    [id, slug].join('-')
  end

end
