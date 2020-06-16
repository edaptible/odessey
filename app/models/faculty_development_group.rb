class FacultyDevelopmentGroup < ApplicationRecord

  include ModelsMixin

  validates :faculty_development_group_name, uniqueness: true

  def to_s
    faculty_development_group_name.to_s
  end

  # # semi-pretty url i.e. 1-english-for-everyone
  # def to_param
  #   return nil unless persisted?
  #   slug = self.to_s.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
  #   [id, slug].join('-')
  # end

end
