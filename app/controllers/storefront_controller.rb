class StorefrontController < ApplicationController
  def home
  end

  def shop
  	@products = Product.all
  end

  def blog
  end

  def contact
  end
end
def items_by_category

  #to get to this page: catergorical_path(params[:category_id])

  @products = Product.where(category: params[:category_id])
  @category = Category.find(params[:category_id])

end