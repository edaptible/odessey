module ModelsMixin

  # semi-pretty url i.e. 1-english-for-everyone
  def to_param
    return nil unless persisted?
    slug = self.to_s.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
    [id, slug].join('-')
  end

end
