class Api::V1::UsersController < ApiController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
    render json: UserSerializer.new(@users)
  end

  def show
    render json: UserSerializer.new(@user)
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:nick_name, :email)
    end
end