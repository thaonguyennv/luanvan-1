class CreateTheDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :the_drivers do |t|
      t.decimal :thedriverPrice
      t.integer :thedriverWork

      t.timestamps
    end
  end
end
