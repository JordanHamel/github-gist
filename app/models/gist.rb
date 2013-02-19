class Gist < ActiveRecord::Base
  attr_accessible :title, :user_id, :gist_files_attributes

  belongs_to :user

  has_many :favorites
  has_many :admirers, :through => :favorites, :class_name => 'User'
  has_many :gist_files, :inverse_of => :gist

  accepts_nested_attributes_for :gist_files

  validates :title, :presence => true

end