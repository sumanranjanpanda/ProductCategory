class CategoriesController < ApplicationController
	#helper "errors"
	#for input page
	def new
		@category=Category.new
	end

	#saving,redirecting and render
	def create
		@category=Category.new(params[:category])
		if @category.save
			redirect_to :controller=>"Categories",:action=>"list"
			flash[:notice]="Category added Successfully........"
		else
			respond_to do |format|
				format.html {render :action=>"new"}
				format.xml {render :xml=>@category.errors}
			end
		end
	end
	
	#for display
	def list
		@categories=Category.find(:all)
	end
	#for deleting data
	def delete
		@category=Category.find(params[:id])
		if @category.destroy
			flash[:notice]="Category deleted Successfully........"
			redirect_to :controller=>"Categories",:action=>"list"
		end
	end
	#edit data
	def edit
		@category=Category.find(params[:id])
	
	end
  
	def update
		@category=Category.find(params[:id])
		if @category.update_attributes(params[:category])
		redirect_to :action=>"list"
		flash[:notice]="Category updated Successfully........."
		else
			respond_to do |format|
				format.html {render :action=>"edit"}
				format.xml {render :xml=>@category.errors}
			end
		end
	end
	def show
                
		@category=Category.find(params[:id])		

	end
	
	
end
