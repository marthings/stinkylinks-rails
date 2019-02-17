class Links::LikesController < ApplicationController
  # Only signed in users can like. If not signed in the user will be asked to sign in
  before_action :authenticate_user!
  # Get the ID for the link so we can use it
  before_action :set_link

  def create
    @link.likes.find_or_create_by(user_id: Current.user)

    respond_to do |format|
      format.js
    end
  end

  def destroy
    @link.likes.destroy_all

    respond_to do |format|
      format.js
    end
  end
  
  private
    def set_link
      @link = Link.find(params[:link_id])
    end

    # Only allow a trusted parameter "white list" through.
    def like_params
      params.require(:like).permit(:user_id, :link_id)
    end
end