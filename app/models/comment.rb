class Comment < ApplicationRecord
      resourcify
      belongs_to :user
      belongs_to :notice
      has_many :coconotices, :dependent => :destroy
end
