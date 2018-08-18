class Club < ApplicationRecord
    resourcify
    belongs_to :user
    mount_uploader :image, ImageUploader
     has_many :commentclubs, :dependent => :destroy 
end
