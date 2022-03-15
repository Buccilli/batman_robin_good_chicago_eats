json.extract! user, :id, :liked_dishes, :desire_to_go_to_restaurant, :created_at, :updated_at
json.url user_url(user, format: :json)
