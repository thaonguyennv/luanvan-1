class CreateInvestmentContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :investment_contracts do |t|
      t.date :iDate
      t.text :iContent
      t.float :iDiscount
      t.float :iProfit

      t.timestamps
    end
  end
end
