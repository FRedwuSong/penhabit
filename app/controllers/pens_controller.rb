class PensController < ApplicationController
before_action :authenticate_user!
	def index
  	@pens = Pen.all	
	end
end
