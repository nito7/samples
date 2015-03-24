class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def import
    Product.omit_command(params[:file])
    Product.import(params[:file])
    redirect_to root_url, notice: "商品を追加しました。"
  end
end
