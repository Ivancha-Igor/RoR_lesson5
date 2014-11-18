class Post < ActiveRecord::Base
  validates_presence_of :title, :body
  validates_uniqueness_of :title
  validates_length_of :title, in: 5..100

  belongs_to :user
end
