class CreateCarRentalContractDets < ActiveRecord::Migration[5.2]
  def change
    create_table :car_rental_contract_dets do |t|
      t.date :rdetDepDay
      t.integer :rdetNoDay
      t.decimal :rdetCarPrice
      t.decimal :rdetDriverPrice

      t.timestamps
    end
  end
end
