class Review < ApplicationRecord
    resourcify
    belongs_to :user
     has_many :coreviews, :dependent => :destroy
end
