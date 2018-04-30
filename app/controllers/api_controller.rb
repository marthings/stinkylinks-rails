class ApiController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }
  before_action :set_default_format

  private

    def set_default_format
      request.format = :json
    end
end