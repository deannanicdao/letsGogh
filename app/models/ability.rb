class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Item, public: true
      if user.has_role? :admin
        can :read, :delete, Item, :published => true
        can :read, :delete, User
      else
        can :manage, Item, user_id: user.id
        can :read, :all
      end

  end
end


