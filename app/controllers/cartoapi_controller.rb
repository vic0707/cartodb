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
			if @table.include? "asia"
				render "cartoapi/asia", locals: {response: @response, page: @page, username: @username, table: @table}
			elsif @table.include? "africa"
				render "cartoapi/africa", locals: {response: @response, page: @page, username: @username, table: @table}
			elsif @table.include? "europe"
				render "cartoapi/europe", locals: {response: @response, page: @page, username: @username, table: @table}
			elsif @table.include? "samerica"
				render "cartoapi/samerica", locals: {response: @response, page: @page, username: @username, table: @table}
			elsif @table.include? "oceania"
				render "cartoapi/oceania", locals: {response: @response, page: @page, username: @username, table: @table}
			else
				render "cartoapi/namerica", locals: {response: @response, page: @page, username: @username, table: @table}
			end
		else
			redirect_to root_path
		end
	end
end
