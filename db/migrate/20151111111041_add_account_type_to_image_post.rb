class AddAccountTypeToImagePost < ActiveRecord::Migration
  def change
    add_column :image_posts, :account_type, :string
  end
end
