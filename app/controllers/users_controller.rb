class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  # GET /Users
  def index
    @users = User.all
  end

  # GET /Users/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.fetch(:user, {})
    end
end
