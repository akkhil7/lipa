class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||=User.first
  end

  protected
  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      @current_user ||=User.find_by(access_token: token)
    end
  end

end
