class AssignmentPolicy < ApplicationPolicy
  def index?
    Rails.logger.info "User roles: #{user.roles}"
    true
  end
  
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
