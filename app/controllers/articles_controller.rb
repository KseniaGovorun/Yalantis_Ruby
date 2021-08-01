class ArticlesController < ApplicationController
  def index
    @couriers = Courier.all
  end
  def show
    @courier = Courier.find(params[:id])
  end
  def new
    @courier = Courier.new
  end

  def create
    @courier = Courier.new(name: "...", email: "...")

    if @courier.save
      redirect_to @courier
    else
      render :new
    end
  end
  def destroy
    @courier = Courier.find(params[:id])
    @courier.destroy

    redirect_to root_path
  end
  private
   def courier_params
     params.require(:courier).permit(:name, :email)
   end
end
