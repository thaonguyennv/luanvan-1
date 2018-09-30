class ModelCar < ApplicationRecord
  belongs_to :brand
  has_many :cars
  has_many :the_drivers
  has_many :drivers, :through => :the_drivers
end
