class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :pName, limit: 30
      t.string :pSex, limit: 10
      t.date :pDob

      t.timestamps
    end
  end
end
