require 'httparty'
module CartoapiHelper
	def api_call(username, table, page_number)
		response = HTTParty.get("https://#{username}.carto.com/api/v2/sql?q=select%20*%20from%20public.#{table}%20limit%2010%20offset%20#{page_number*10}")
		return arrange_response(response["rows"])
	end

	def arrange_response(response)
		arranged_response = []
		response.each do |value|
			if value["admin"]
				arranged_response.push({name: value["admin"], id: value["cartodb_id"], initials: value["adm0_a3"]})
			elsif value["iso_alpha3"]
				arranged_response.push({name: value["name"], id: value["cartodb_id"], initials: value["iso_alpha3"]})
			else
				arranged_response.push({name: value["name"], id: value["cartodb_id"], initials: value["adm0_a3"]})	
			end
		end
		arranged_response
	end
end
