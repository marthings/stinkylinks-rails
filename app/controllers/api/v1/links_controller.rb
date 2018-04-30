class Api::V1::LinksController < ApiController
  before_action :set_link, only: [:show]

  def index
    @links = Link.all
    render json: @links
  end

  def show
    render json: @link
  end

  private

    def set_link
      @link = Link.find(params[:id])
    end
end