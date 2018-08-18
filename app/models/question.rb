class Question < ApplicationRecord
    resourcify
    belongs_to :user
    mount_uploader :image, ImageUploader
    has_many :commentquestions, :dependent => :destroy 
end
