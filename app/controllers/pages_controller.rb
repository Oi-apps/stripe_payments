class PagesController < ApplicationController
	def home
		# @product = Product.find_by_sku("GROHACK1") 
		@product = Product.find_by_sku("GROHACK2")
		#@product = Product.find(<%= @product.product_sku %>)
		 #@product = Product.find(params[:product_id])
		# @product = Product.find_by_sku(params[:product_sku])
	end

end