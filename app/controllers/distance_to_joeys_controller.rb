class DistanceToJoeysController < ApplicationController
  before_action :set_distance_to_joey, only: %i[show edit update destroy]

  def index
    @q = DistanceToJoey.ransack(params[:q])
    @distance_to_joeys = @q.result(distinct: true).includes(:restaurant).page(params[:page]).per(10)
  end

  def show; end

  def new
    @distance_to_joey = DistanceToJoey.new
  end

  def edit; end

  def create
    @distance_to_joey = DistanceToJoey.new(distance_to_joey_params)

    if @distance_to_joey.save
      message = "DistanceToJoey was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @distance_to_joey, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @distance_to_joey.update(distance_to_joey_params)
      redirect_to @distance_to_joey,
                  notice: "Distance to joey was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @distance_to_joey.destroy
    message = "DistanceToJoey was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to distance_to_joeys_url, notice: message
    end
  end

  private

  def set_distance_to_joey
    @distance_to_joey = DistanceToJoey.find(params[:id])
  end

  def distance_to_joey_params
    params.require(:distance_to_joey).permit(:restaurant_id, :minutes_walking)
  end
end
