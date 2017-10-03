class StaticPagesController < ApplicationController
  def home
    @products = Product.all.page(params[:page]).per(8)
    @search = Product.search(params[:search]) 
  end

  def search
  end

  def about
  end

  def wtbuy
  end

  def faq
  end

  def contact
  end

  def shirt
    @products = Product.all.page(params[:page]).per(8)
  end

  def shoe
    @products = Product.all.page(params[:page]).per(8)
  end

  def glasse
    @products = Product.all.page(params[:page]).per(8)
  end

  def addtocart
  end

  ## Create trang View San PHam
  def viewSanPham
    @search = Product.search(params[:search]) 
  end

end
