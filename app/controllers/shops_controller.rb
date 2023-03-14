class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shops_path
    else
      render :new
    end
  end

  def edit
    shop_id = params[:id]
    @shop = Shop.find_by(id: shop_id)  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      redirect_to shops_path
    else
      render :new
    end
  end

  def destroy
    shop_id = params[:id]
    @shop = Shop.find_by(id: shop_id)
    @shop.destroy
    redirect_to shops_path
  end

  def shop_params
    params.require(:shop).permit(:name, :shop_url, :street_address, :city, :country)
  end
end
