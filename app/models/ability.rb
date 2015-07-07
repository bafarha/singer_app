class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # gues user (not logged in)
    
    if user.admin?
    	can :manage, :all
    else
    	can :read, :all
    	can :manage, User, id: user.id
    end
  end
end
