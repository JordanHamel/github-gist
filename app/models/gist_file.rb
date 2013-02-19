class GistFile < ActiveRecord::Base
  attr_accessible :body, :gist_id

  validates :body, :presence => true
  validates :gist, :presence => true

  belongs_to :gist, :inverse_of => :gist_files
end
