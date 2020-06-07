class User < ApplicationRecord

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

  # semi-pretty url i.e. 1-english-for-everyone
  def to_param
    return nil unless persisted?
    slug = username.downcase.gsub(/[^a-z ]/, '').gsub(/ /, '-')
    [id, slug].join('-')
  end

end
