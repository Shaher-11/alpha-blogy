class Comment < ApplicationRecord
  validates :body, presence: true, length: { maximum: 200,
    too_long: '200 characters in comment is the maximum allowed.' }
  belongs_to :article
  belongs_to :user
end
