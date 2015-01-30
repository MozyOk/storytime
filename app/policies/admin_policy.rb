class AdminPolicy < Struct.new(:user, :admin)
  attr_reader :user, :admin

  def initialize(user, admin)
    @user = user
    @admin = admin
  end

  def create?
    manage?
  end

  def read?
    manage?
  end

  def update?
    manage?
  end

  def destroy?
    manage?
  end

  def manage?
    action = Storytime::Action.find_by(guid: "3fj09k")
    user.storytime_role.allowed_actions.include?(action)
  end
end