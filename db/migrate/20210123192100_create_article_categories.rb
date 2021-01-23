class CreateArticleCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :article_categories do |t|
      t.integer :article_id
      t.integer :category_id
      t.timestamps
    end
  end
end
