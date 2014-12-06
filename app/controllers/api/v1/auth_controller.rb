class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      token = AuthToken.issue_token({ user_id: user.id })
      render json: { user: user, token: token }
    else
      render json: { error: "Invalid email/password combination" }, status: :unauthorized
    end
  end

end
