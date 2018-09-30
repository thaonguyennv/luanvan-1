class CreateModelCars < ActiveRecord::Migration[5.2]
  def change
    create_table :model_cars do |t|
      t.string :model, limit: 20
      t.integer :noSeat
      t.decimal :factoryPrice

      t.timestamps
    end
  end
end
