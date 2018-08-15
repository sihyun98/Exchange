class Info < ApplicationRecord
    resourcify
    belongs_to :user
    has_many:commentinfos, :dependent=>:destroy
end
