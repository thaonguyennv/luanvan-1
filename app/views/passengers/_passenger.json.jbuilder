json.extract! passenger, :id, :pName, :pSex, :pDob, :created_at, :updated_at
json.url passenger_url(passenger, format: :json)
