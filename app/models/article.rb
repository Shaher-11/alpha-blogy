class Article < ApplicationRecord 
    has_many :comments, dependent: :delete_all
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories
    has_many :likes, dependent: :destroy
    validates :title, presence: true, length: { minimum: 3, maximum: 100}
    validates :description, presence: true
    has_rich_text :description
end
