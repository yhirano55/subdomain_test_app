class WelcomeController < ApplicationController
  def index
    if params[:session]
      session[:id] = "#{request.subdomain.presence || 'main'}|#{SecureRandom.uuid}"
    end

    if params[:delete_session]
      session[:id] = nil
    end
  end
end
