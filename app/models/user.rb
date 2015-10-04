class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  before_create :update_access_token!
  require 'securerandom'

  def update_access_token!
    return if access_token.present?
    self.access_token = SecureRandom.uuid.gsub(/\-/,'')
  end

  has_many :image_posts
end
