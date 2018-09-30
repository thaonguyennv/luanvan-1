json.extract! car, :id, :licensePlate, :mileage, :status, :price, :created_at, :updated_at
json.url car_url(car, format: :json)
