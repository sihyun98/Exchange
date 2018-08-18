class Info < ApplicationRecord
    resourcify
    belongs_to :user
    mount_uploader :image, ImageUploader
    has_many:commentinfos, :dependent=>:destroy
end
