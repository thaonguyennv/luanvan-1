class CreateInvestmentContractDets < ActiveRecord::Migration[5.2]
  def change
    create_table :investment_contract_dets do |t|
      t.date :idetContribDay

      t.timestamps
    end
  end
end
