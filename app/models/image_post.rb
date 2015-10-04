class ImagePost < ActiveRecord::Base
  before_action :authenticate
  belongs_to :user
end
