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

require 'test_helper'

class ImagePostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
