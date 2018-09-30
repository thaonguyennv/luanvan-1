json.extract! customer, :id, :cName, :cSex, :cDob, :cTel, :cAddress, :created_at, :updated_at
json.url customer_url(customer, format: :json)
