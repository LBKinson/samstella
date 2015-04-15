class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

 	before_filter :authenticate

	protected

	def authenticate
	  authenticate_or_request_with_http_basic do |username, password|
	    username == "sam" && password == "foobar"
	  end
	end

  protect_from_forgery with: :exception
end
