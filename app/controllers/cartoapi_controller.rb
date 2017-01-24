class CartoapiController < ApplicationController
	include CartoapiHelper
	def search
		if params[:to_do] == "next"
			@page = params[:page].to_i + 1
			@username = params[:username]
			@table = params[:table]
			@response = api_call( @username, @table, @page)
		elsif params[:to_do] == "previous"
			params[:page].to_i > 0 ? @page = params[:page].to_i - 1 : @page = params[:page].to_i
			@username = params[:username]
			@table = params[:table]
			@response = api_call( @username, @table, @page)
		else
			@page = 0
			@username = params[:user][:username]
			@table = params[:user][:table]
			@response = api_call( @username, @table, @page)
		end
		if  @response.first[0] != "error"
			render_country(@response, @page, @username, @table)
		else
			redirect_to root_path
		end
	end

	private

	def render_country(response, page, username, table)
		if table.include?("asia") || table.include?("africa") || table.include?("europe") || table.include?("america") || table.include?("oceania") 
			render "cartoapi/#{table}", locals: {response: response, page: page, username: username, table: table}
		end
	end
end
