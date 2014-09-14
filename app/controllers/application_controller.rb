class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
  def not_found
    raise AbstractController::ActionNotFound.new('Not Found')
  end
  def not_found
    raise ActiveRecord::RecordNotFound.new('Not Found')
  end
end
