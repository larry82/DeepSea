class PlaygroundController < ApplicationController
	
	before_action :set_user

	def main
		@character = @user.characters.first
		@map = character.map.first
		@map = Map.init_map(@character)

		unless current_user.characters.first.present?
			redirect_to start_path
		end
	end

	def start
		if  current_user.characters.first.present?
			redirect_to root_path
		else
			@character = @user.characters.new
		end

	end

private 
	def set_user
		@user = current_user
	end
end
