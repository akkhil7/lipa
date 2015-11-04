class AddTypeToImagePost < ActiveRecord::Migration
  def change
    add_column :image_posts, :type, :string
  end
end
