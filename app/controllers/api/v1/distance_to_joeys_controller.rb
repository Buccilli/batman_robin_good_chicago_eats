class Api::V1::DistanceToJoeysController < Api::V1::GraphitiController
  def index
    distance_to_joeys = DistanceToJoeyResource.all(params)
    respond_with(distance_to_joeys)
  end

  def show
    distance_to_joey = DistanceToJoeyResource.find(params)
    respond_with(distance_to_joey)
  end

  def create
    distance_to_joey = DistanceToJoeyResource.build(params)

    if distance_to_joey.save
      render jsonapi: distance_to_joey, status: 201
    else
      render jsonapi_errors: distance_to_joey
    end
  end

  def update
    distance_to_joey = DistanceToJoeyResource.find(params)

    if distance_to_joey.update_attributes
      render jsonapi: distance_to_joey
    else
      render jsonapi_errors: distance_to_joey
    end
  end

  def destroy
    distance_to_joey = DistanceToJoeyResource.find(params)

    if distance_to_joey.destroy
      render jsonapi: { meta: {} }, status: 200
    else
      render jsonapi_errors: distance_to_joey
    end
  end
end
