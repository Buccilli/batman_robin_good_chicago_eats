class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @q = Restaurant.ransack(params[:q])
    @restaurants = @q.result(distinct: true).includes(:dishes,
                                                      :distance_to_joeys).page(params[:page]).per(10)
  end

  def show
    @distance_to_joey = DistanceToJoey.new
    @dish = Dish.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit; end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant was successfully created."
    else
      render :new
    end
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: "Restaurant was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_url,
                notice: "Restaurant was successfully destroyed."
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:good_service, :distance_to_joey,
                                       :price, :other_comments, :cuisine, :name, :neighborhood, :service_id, :added_by, :desire_to_go_to_restaurant)
  end
end
