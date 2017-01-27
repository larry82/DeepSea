class CharactersController < ApplicationController

	def create
		
		character = current_user.characters.new(character_params)

		if character.save!
			redirect_to :back
		else
			flash[:alert] = "建立失敗！"
			redirect_to :back
		end
	end

private
  
  def character_params
    params.require(:character).permit(:name)
  end

end
