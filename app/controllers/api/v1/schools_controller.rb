class Api::V1::SchoolsController < ApplicationController
  respond_to :json

  def index
    respond_with School.all
  end

  def create
    respond_with School.create(create_school_params)
  end

  private

  def create_school_params
    params.require(:school).permit(:name)
  end

end
