class Driver < ApplicationRecord
  has_many :car_rental_contract_dets
  has_many :the_drivers
  has_many :model_cars, :through => :the_drivers
end
