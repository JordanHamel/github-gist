class User < ActiveRecord::Base
  attr_accessible :user_name

  has_many :gists
  has_many :favorites
  has_many :favorited_gists, :through => :favorites, :class_name => 'Gist'

  validates :user_name, :uniqueness => true, :presence => true

  before_save :create_remember_token

  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end

end