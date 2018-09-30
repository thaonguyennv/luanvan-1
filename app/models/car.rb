class Car < ApplicationRecord
  belongs_to :model_car
  has_many :car_rental_contract_dets
  has_many :car_rental_contracts, :through => :car_rental_contract_dets
# thuc the yeu investment_contract_dets
  has_many :investment_contract_dets
  has_many :investment_contracts, :through => :investment_contract_dets
end
