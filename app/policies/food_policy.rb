class FoodPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def my_fav_foods?
    true
  end

  def update?
    user == record.user
  end

  def destroy?
    user == record.user
  end
end
