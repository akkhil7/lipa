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
  has_attached_file :image, :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
    :processors => [:watermark],
    :styles => {
      :thumb => '150x150>',
      :original => { :geometry => '800>', :watermark_path => "#{Rails.root}/public/images/button.png" }
    }

    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

    def s3_credentials
      {:bucket => "lipa", :access_key_id => "AKIAJX72HV2DGXF6VQNA",
       :secret_access_key => "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"}
    end

end
