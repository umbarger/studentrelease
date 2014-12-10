class Ability
  include CanCan::Ability
  
  def initialize(user)
    if user && user.persisted? 
      can :destroy, Family, family_id: family.id
    end
  end
end
