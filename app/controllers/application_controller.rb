require 'httparty'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def api_call(username, table, page_number)
  	HTTParty.get("https://#{username}.carto.com/api/v2/sql?q=select%20*%20from%20public.#{table}%20limit%20#{page_number*10}")
  end
end
