class AgileValue < ApplicationRecord

  include ModelsMixin

  has_many :student_challenges, dependent: :destroy

  validates :agile_value_name, uniqueness: true

  def to_s
    agile_value_name.to_s
  end

  # # semi-pretty url i.e. 1-english-for-everyone
  # def to_param
  #   return nil unless persisted?
  #   slug = self.to_s.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
  #   [id, slug].join('-')
  # end

end
