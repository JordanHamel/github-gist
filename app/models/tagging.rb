class Tagging < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :tag, :inverse_of => :taggings
  belongs_to :gist, :inverse_of => :taggings

  # validates :tag, :presence => true
  # validates :gist, :presence => true

end
