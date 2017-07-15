class Ability
  include CanCan::Ability
  class_attribute :abilities
  self.abilities = Set.new
  def initialize(user,role)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
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
    self.clear_aliased_actions

    # alias_action :index, :show, :to => :read
    # alias_action :new, :to => :create
    # alias_action :edit, :enable, :disable, :to => :update
    # alias_action :destroy, :to => :delete
    # alias_action :create, :update, :destroy, to: :modify
    # alias_action :read, :create, :update, :delete, to: :manage    
    user ||= User.new
    role ||= Role.new
    permissions(user,role).each do |permission|
        can(1,permission.name) if permission.name.present?
    end
    can :manage, User

    # Ability.abilities.merge(abilities_to_register).each do |clazz|
    #   ability = clazz.send(:new, user)
    #   @rules = rules + ability.send(:rules)
    # end 

    # Protect superuser
    cannot [:update, :destroy], User, id: 2
    cannot [:update, :destroy], Permission, id: 1
  end

  def permissions(user,role)
      permissions = []
      permissions += user.permissions
      permissions += role.permissions
  end

   def can?(*args)

        if args.length == 1
          args.unshift 1
        end    
       super
   end
  def abilities_to_register
    []
  end   
end
