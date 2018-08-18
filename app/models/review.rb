class Review < ApplicationRecord
    resourcify
    mount_uploader :image, ImageUploader
    belongs_to :user
     has_many :coreviews, :dependent => :destroy
end
