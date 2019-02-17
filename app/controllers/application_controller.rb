class ApplicationController < ActionController::Base
  before_action :set_current_user
  # Current user available "globally". Using current.rb in models
  private
    def set_current_user
      Current.user = current_user
    end

end
