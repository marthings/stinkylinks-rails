class ApplicationController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }
  before_action :set_current_user
  
  # Current user available "globally". Using current.rb in models
  private
    def set_current_user
      Current.user = current_user
    end
end
