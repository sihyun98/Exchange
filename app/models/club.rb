class Club < ApplicationRecord
    resourcify
    belongs_to :user
    mount_uploader :image, ImageUploader
     has_many :cocomentclubs, :dependent => :destroy 
end
