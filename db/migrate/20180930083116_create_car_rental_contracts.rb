class CreateCarRentalContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :car_rental_contracts do |t|
      t.date :rDate
      t.text :rContent
      t.decimal :rValue

      t.timestamps
    end
  end
end
