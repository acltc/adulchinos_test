class ProductsController < ApplicationController

	def index 
		@products = Product.all					
	end

	def new
	end

	def create
		@new = Product.create({:title => params[:title], :image => params[:image], :description => params[:description], 
		:category => params[:category], :price => params[:price]}) 
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update({:title => params[:title], :image => params[:image], :description => params[:description], 
		:category => params[:category], :price => params[:price]})
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
	end

end
