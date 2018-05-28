class PensController < ApplicationController
before_action :authenticate_user!
	def index
  	@pens = Pen.all	
	end

	def new
		@pen = Pen.new
	end	

	def create
		@pen = current_user.pens.build(pen_params)
		if @pen.save
			redirect_to root_path, notice: "新增成功"
		else
			render :new 
		end
	end

	def destroy
		@pen = Pen.find_by(id: params[:id])
		@pen.destroy if @pen
		redirect_to root_path, notice: "鋼筆資料已刪除"
	end
  
  def show
  	
  end

	private
	def pen_params
		params.require(:pen).permit(:name, :brand, :description, :price, :image)
	end

end
