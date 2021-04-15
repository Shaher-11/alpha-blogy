class Article < ApplicationRecord 
    has_many :comments
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories
    validates :title, presence: true, length: { minimum: 6, maximum: 100}
    validates :description, presence: true, length: { minimum: 100, maximum: 900}
end
