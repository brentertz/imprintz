class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :basic_auth, :if => :do_basic_auth?

  private

  def do_basic_auth?
    return false if CONFIG['basic_auth'].nil?
    CONFIG['basic_auth']
  end

  def basic_auth
    authenticate_or_request_with_http_basic(CONFIG['site_name']) do |username, password|
      username == CONFIG['basic_auth_user'] && password == CONFIG['basic_auth_password']
    end
  end
end
