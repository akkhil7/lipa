class AddImageToImagePost < ActiveRecord::Migration
  def change
    add_column :image_posts, :image, :attachment
  end
end
