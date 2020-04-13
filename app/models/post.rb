class Post < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション

  def self.search(search)
    return Post.all unless search
    Tweet.where('text LIKE(?)', "%#{search}%")
  end
end
