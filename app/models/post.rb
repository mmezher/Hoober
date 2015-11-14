class Post < ActiveRecord::Base
  belongs_to :user
  attachment :image
  validates_presence_of :deadline
end
