class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.worker?
      can :manage, Annoucement
      can :manage, Search
      can :read, Order
      can :create, Order
      can :read, Item
    else
      can :create, Order
      can :read, Order do |order|
        order.user == user
      end
      can :read, Item
    end

  end
end
