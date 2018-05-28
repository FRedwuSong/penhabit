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

	def edit
		 @pen = Pen.find_by(id: params[:id]) 
	end

	def update
		@pen = Pen.find_by(id: params[:id])
		if @pen.update(pen_params)
			redirect_to root_path, notice: "更新成功"
		else
			render :edit 
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
