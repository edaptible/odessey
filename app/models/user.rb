class User < ApplicationRecord

  include ModelsMixin

  # Include default devise modules.
  # devise  :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :validatable
  # Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable,
          authentication_keys: [:username]

  has_many :student_sumissions, dependent: :destroy

  belongs_to :cohort

  validates :username, uniqueness: true

  def to_s
    username.to_s
  end

  # # semi-pretty url i.e. 1-english-for-everyone
  # def to_param
  #   return nil unless persisted?
  #   slug = self.to_s.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
  #   [id, slug].join('-')
  # end

end
