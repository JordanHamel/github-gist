class Favorite < ActiveRecord::Base

  belongs_to :user
  belongs_to :gist

  validates_uniqueness_of :user_id, :scope => :gist_id


end
