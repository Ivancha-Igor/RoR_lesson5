class Post < ActiveRecord::Base
  validates_presence_of :title, :body
  validates_uniqueness_of :title
  validates_length_of :title, {minimum: 3}

  belongs_to :user
end
