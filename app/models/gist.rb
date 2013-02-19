class Gist < ActiveRecord::Base
  attr_accessible :title, :user_id, :gist_files_attributes, :tag_ids

  belongs_to :user

  has_many :favorites
  has_many :admirers, :through => :favorites, :class_name => 'User' # unsure about this
  has_many :gist_files, :inverse_of => :gist
  has_many :taggings, :inverse_of => :gist
  has_many :tags, :through => :taggings

  accepts_nested_attributes_for :gist_files

  validates :title, :presence => true

end