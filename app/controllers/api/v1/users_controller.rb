class Api::V1::UsersController < ApplicationController
  respond_to :json

  def create
    respond_with get_school.users.create(create_user_params)
  end

  def index
    respond_with get_school.users
  end

  private

  def get_school
    School.find(params[:school_id])
  end

  def create_user_params
    params.require(:user).
      permit(:password, :password_confirmation, :email, :date_of_birth)
  end


end
