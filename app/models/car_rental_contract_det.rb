class CarRentalContractDet < ApplicationRecord
  has_many :drivers
  belongs_to :car_rental_contract
  belongs_to :car
end
