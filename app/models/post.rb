class Post < ActiveRecord::Base
  has_many :comments, -> { order("position ASC") }
  belongs_to :user
end