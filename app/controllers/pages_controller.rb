require 'httparty'
class PagesController < ApplicationController
  def home
  	# @response = HTTParty.get('https://vic0707.carto.com/api/v2/sql?q=select%20*%20from%20public.asia_adm0%20limit%2010')
  end

  def load_data

  end
end
