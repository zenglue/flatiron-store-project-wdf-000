class OrdersController < ApplicationController
  before_action :set_order only: [:show, :ship]

  def show
  end

  def shipped
    @order.ship
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end
