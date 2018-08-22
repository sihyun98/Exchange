class FriendlistController < ApplicationController
    def friendlistindex
        @users = User.all
    end
end
