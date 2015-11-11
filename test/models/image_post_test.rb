# == Schema Information
#
# Table name: image_posts
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  account_type       :string
#  user_id            :integer
#  category           :string
#

require 'test_helper'

class ImagePostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
