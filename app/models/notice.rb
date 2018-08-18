class Notice < ApplicationRecord
    resourcify
    belongs_to :user
    mount_uploader :image, ImageUploader
    has_many :comments, :dependent => :destroy 
end
