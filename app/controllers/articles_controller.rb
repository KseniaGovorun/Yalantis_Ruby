class ArticlesController < ApplicationController
  def index
    @couriers = Courier.all
  end
end
