class AddCategoryToImagePost < ActiveRecord::Migration
  def change
    add_column :image_posts, :category, :string
  end
end
