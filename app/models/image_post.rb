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

class ImagePost < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id
  before_create :validate_user

  has_attached_file :image, :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
    :processors => [:watermark],
    :styles => {
      :thumb => '150x150>',
      :original => { :geometry => '800>', :watermark_path => "#{Rails.root}/public/images/button.png" }
    }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def s3_credentials
   {:bucket => "lipa", :access_key_id => "AKIAJNVSIN4AXDYHW4JA",
    :secret_access_key => "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"}
  end

  private
    def validate_user
      if (self.user_id.exists?)
        user = User.find(user_id)
        if user.account_type == "amateur" || user.account_type == "pro"
          return true
        else
          return false
        end
      else
        return false
      end
    end

end
