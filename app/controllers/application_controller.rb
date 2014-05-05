class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # SessionsHelper modulünü uygulamaya dahil ettik
  include SessionsHelper

end
