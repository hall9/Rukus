class Post < ActiveRecord::Base
  has_many :comments #, -> { order("position ASC") }
  belongs_to :user
  has_many :favorites
  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :pic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end