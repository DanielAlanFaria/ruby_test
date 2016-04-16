class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def url_webmotors
  	"http://www.webmotors.com.br/carro/"
  end
end
