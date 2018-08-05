class Review < ApplicationRecord
     has_many :coreviews, :dependent => :destroy
end
