class InvestmentContract < ApplicationRecord
  belongs_to :member
# thuc the yeu investment_contract_dets theo cach 2
  has_many :investment_contract_dets
  has_many :cars, :through => :investment_contract_dets
end
