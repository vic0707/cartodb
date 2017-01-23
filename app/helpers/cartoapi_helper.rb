require 'httparty'
module CartoapiHelper
	def api_call(username, table, page_number)
		HTTParty.get("https://#{username}.carto.com/api/v2/sql?q=select%20*%20from%20public.#{table}%20limit%2010%20offset%20#{page_number*10}")
	end
end
