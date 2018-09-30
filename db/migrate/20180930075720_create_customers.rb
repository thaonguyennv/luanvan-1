class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :cName, limit: 30
      t.string :cSex, limit: 10
      t.date :cDob
      t.string :cIdNo, limit: 15
      t.string :cTel, limit: 10
      t.string :cAddress, limit: 100

      t.timestamps
    end
  end
end
