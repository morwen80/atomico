class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  # because when we delete a post we want to destroy all its comments as well
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end
