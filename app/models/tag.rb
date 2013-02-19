class Tag < ActiveRecord::Base
  attr_accessible :name

  has_many :taggings, :inverse_of => :tag
  has_many :gists, :through => :taggings

  validates :name, :uniqueness => true

end
