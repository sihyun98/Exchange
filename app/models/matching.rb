class Matching < ApplicationRecord
    
    resourcify
    belongs_to :user
    mount_uploader :image, ImageUploader
    has_many :commentmatchings, :dependent => :destroy
end
