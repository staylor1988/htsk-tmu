class StorefrontController < ApplicationController
  def home
  end

  def shop
  	@products = Product.all
  end

  def blog
    @posts = Post.all
  end

  def contact
  end

  def items_by_category

    #to get to this page: catergorical_path(params[:category_id])
    @category = Category.find(params[:category_id])
    @products = @category.products
  end
end