class AccountsController < ApplicationController
	require 'pry'
	def new
		@account = Account.new
		@account.owner = User.new
	end
	def create
		@account = Account.new(account_params)
		if @account.save
			flash[:notice] = "Signed up successfully" 
			redirect_to root_path
		else
			flash[:notice] = "It seems something went wrong, please try again" 
			render action: "new"
		end
	end

	private 
	def account_params
		params.require(:account).permit(:subdomain, owner_attributes: [:name, :email, :password, :password_confirmation])
	end
end