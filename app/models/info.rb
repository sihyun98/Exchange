class Info < ApplicationRecord
    has_many:commentinfos, :dependent=>:destroy
end
