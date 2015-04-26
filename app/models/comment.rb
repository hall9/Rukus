class Comment < ActiveRecord::Base
  belongs_to :Post
  belongs_to :Users
  #acts_as_list scope: :Post
end
