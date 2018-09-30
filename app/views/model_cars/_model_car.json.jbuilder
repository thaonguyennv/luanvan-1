json.extract! model_car, :id, :model, :noSeat, :factoryPrice, :created_at, :updated_at
json.url model_car_url(model_car, format: :json)
