class ProductsController < ApplicationController
	#helper "errors"
	#for input page
	def new
		@product=Product.new
	end
	#for save,redirecting and rendering
	def create
		@product=Product.new(params[:product])
		puts @product
		if @product.save
			if (@product.status == 1)
			redirect_to :controller=>"Products",:action=>"list"
			else
			redirect_to :controller=>"Products",:action=>"list1"	
			end		
			flash[:notice]="Product added Successfully........."
		else
			respond_to do |format|
				format.html {render :action=>"new"}
				format.xml {render :xml=>@product.errors}
			end
		end
	end

	#for displaying active data
	def list
		@products=Product.find(:all, :conditions=>{:status=>"1"})
	end
	#for displaying inactive data
	def list1
		@products=Product.find(:all, :conditions=>{:status=>"0"})
	end
	def edit
		@product=Product.find(params[:id])
	
	end
 	def update
		@product=Product.find(params[:id])
		if @product.update_attributes(params[:product])
			if (@product.status == 1)
			redirect_to :action=>"list"
			else
			redirect_to :action=>"list1"
			end
			flash[:notice]="Product updated Successfully........."
		else
			respond_to do |format|
				format.html {render :action=>"edit"}
				format.xml {render :xml=>@product.errors}
			end
		end

	end


	#deleteing record 
	def delete
		@product=Product.find(params[:id])
		if @product.destroy
			if (@product.status == 1)
			redirect_to :action=>"list"
			else
			redirect_to :action => "list1"
			end
		flash[:notice]="Product deleted successfully........."
		end
	end
	def show
                
		@product=Product.find(params[:id])		

	end
	
end
