class AddDescriptionToImagePost < ActiveRecord::Migration
  def change
    add_column :image_posts, :desc, :string
  end
end
