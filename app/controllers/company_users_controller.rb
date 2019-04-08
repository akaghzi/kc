class CompanyUsersController < ApplicationController
  def index
    @company_users = Assignment.where(company_id: current_user.company.id)
    authorize @company_users
  end
end
