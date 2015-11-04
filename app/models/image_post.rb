# == Schema Information
#
# Table name: image_posts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :attachment
#  user_id    :integer
#

class ImagePost < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image
end
