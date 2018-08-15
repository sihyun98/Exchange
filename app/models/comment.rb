class Comment < ApplicationRecord
      resourcify
      belongs_to :user
      belongs_to :notice
end
