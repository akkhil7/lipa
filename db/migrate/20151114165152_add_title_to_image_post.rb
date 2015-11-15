class AddTitleToImagePost < ActiveRecord::Migration
  def change
    add_column :image_posts, :title, :string
  end
end
