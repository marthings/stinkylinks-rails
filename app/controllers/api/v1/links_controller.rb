class Api::V1::LinksController < ApiController
  before_action :set_link, only: [:show]

  def index
    @links = Link.all
    render json: LinkSerializer.new(@links)
  end

  def show
    render json: LinkSerializer.new(@link)
  end

  # POST /links
  def create
    @link = Link.new(link_params)

    if @link.save
      render json: @link, status: :created, location: @link
    else
      render json: @link.errors, status: :unprocessable_entity
    end
  end

  private

    def set_link
      @link = Link.find(params[:id])
    end

    def link_params
      params.require(:link).permit(:title, :url, :user_id)
    end
end