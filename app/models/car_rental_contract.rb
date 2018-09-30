class CarRentalContract < ApplicationRecord
  has_many :customers
  has_many :car_rental_contract_dets
  has_many :cars, :through => :car_rental_contract_dets
  has_many :passenger
end
