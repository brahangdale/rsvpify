class  CategoriesController < ApplicationController
	def edit
		@category = Category.find(params[:id])
	end 
	def update
		@category = Category.find(params[:id])
		if @category.update(category_params)
			flash[:notice] = "category update"
			redirect_to category_path(@category)
		else
			 render :edit
		end
	end
	def show
		@category = Category.find(params[:id])
	end

	private
	def category_params
		params.require(:category).permit(:category_name, :image)
	end
end