class AddUserIdToImagePost < ActiveRecord::Migration
  def change
    add_column :image_posts, :user_id, :integer
  end
end
