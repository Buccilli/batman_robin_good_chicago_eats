class DistanceToJoeysController < ApplicationController
  before_action :set_distance_to_joey, only: %i[show edit update destroy]

  # GET /distance_to_joeys
  def index
    @q = DistanceToJoey.ransack(params[:q])
    @distance_to_joeys = @q.result(distinct: true).includes(:restaurant).page(params[:page]).per(10)
  end

  # GET /distance_to_joeys/1
  def show; end

  # GET /distance_to_joeys/new
  def new
    @distance_to_joey = DistanceToJoey.new
  end

  # GET /distance_to_joeys/1/edit
  def edit; end

  # POST /distance_to_joeys
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

  # PATCH/PUT /distance_to_joeys/1
  def update
    if @distance_to_joey.update(distance_to_joey_params)
      redirect_to @distance_to_joey,
                  notice: "Distance to joey was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /distance_to_joeys/1
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

  # Use callbacks to share common setup or constraints between actions.
  def set_distance_to_joey
    @distance_to_joey = DistanceToJoey.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def distance_to_joey_params
    params.require(:distance_to_joey).permit(:restaurant_id, :minutes_walking)
  end
end
