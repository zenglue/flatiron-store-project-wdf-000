class LineItemsController < ApplicationController
  def create
    if current_user
      current_user.current_cart = current_user.carts.create unless current_user_cart
      current_user.save
      current_user_cart.add_item(params[:item_id]).save
      redirect_to cart_path(current_user_cart)
    else
      redirect_to store_path
    end
  end
end
