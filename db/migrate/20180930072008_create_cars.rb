class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :licensePlate, limit: 15
      t.decimal :mileage
      t.string :status, limit: 1024
      t.decimal :price

      t.timestamps
    end
  end
end
