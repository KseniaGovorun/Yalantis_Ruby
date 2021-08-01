class ArticlesController < ApplicationController
  def index
    @couriers = Courier.all
  end
  def show
    @courier = Courier.find(params[:id])
  end
end
