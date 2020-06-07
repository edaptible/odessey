class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # To configure confirmable see: https://github.com/heartcombo/devise/wiki/How-To:-Add-:confirmable-to-Users
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable,
          :lockable, :timeoutable, # :confirmable,
          :trackable, :authentication_keys => [:email]

  validates :email, uniqueness: true

  # semi-pretty url i.e. 1-english-for-everyone
  def to_param
    return nil unless persisted?
    slug = (first_name + last_name).downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
    [id, slug].join('-')
  end

end
