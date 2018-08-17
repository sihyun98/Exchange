class Ability
  include CanCan::Ability

  def initialize(user)
    
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
         can :manage, :all
    else
         can [:index_review, :home_review, :new_review, :create_review], Review
         can [:edit_review, :update_review, :destroy_review], Review, user_id: user.id
         
         can [:index_matching, :home_matching, :new_matching, :create_matching], Matching
         can [:edit_matching, :update_matching, :destroy_matching], Matching, user_id: user.id
         
         can [:index_notice, :home_notice, :new_notice, :create_notice], Notice
         can [:edit_notice, :update_notice, :destroy_notice], Notice, user_id: user.id
         
         can [:index_info, :home_info, :new_info, :create_info], Info
         can [:edit_info, :update_info, :destroy_info], Info, user_id: user.id
         
         can [:index_club, :home_club, :new_club, :create_club], Club
         can [:edit_club, :update_club, :destroy_club], Club, user_id: user.id
         
         can [:index_question, :home_question, :new_question, :create_question], Question
         can [:edit_question, :update_question, :destroy_question], Question, user_id: user.id
         
     #comment 권한
         can [:create], Comment
         can [:edit, :update, :destroy], Comment, user_id: user.id
         
         can [:create], Coreview
         can [:edit, :update, :destroy], Coreview, user_id: user.id
         
         can [:create], Commentinfo
         can [:edit, :update, :destroy], Commentinfo, user_id: user.id
         
         can [:create], Commentmatching
         can [:edit, :update, :destroy], Commentmatching, user_id: user.id
         
         can [:create], Commentclub
         can [:edit, :update, :destroy], Commentclub, user_id: user.id
         
         can [:create], Commentquestion
         can [:edit, :update, :destroy], Commentquestion, user_id: user.id
         
         
         
    end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
