class ServicesController < ApplicationController
  before_action :set_service, only: %i[show edit update destroy]

  def index
    @q = Service.ransack(params[:q])
    @services = @q.result(distinct: true).includes(:restaurants).page(params[:page]).per(10)
  end

  def show
    @restaurant = Restaurant.new
  end

  def new
    @service = Service.new
  end

  def edit; end

  def create
    @service = Service.new(service_params)

    if @service.save
      redirect_to @service, notice: "Service was successfully created."
    else
      render :new
    end
  end

  def update
    if @service.update(service_params)
      redirect_to @service, notice: "Service was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @service.destroy
    redirect_to services_url, notice: "Service was successfully destroyed."
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:server_name)
  end
end
