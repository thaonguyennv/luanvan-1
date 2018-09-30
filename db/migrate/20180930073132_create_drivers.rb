class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :dName, limit: 30
      t.string :dSex, limit: 10
      t.date :dDob
      t.string :dIdNo, limit: 15
      t.string :dTel, limit:10
      t.string :dAddress
      t.string :dLicenseNo, limit: 15
      t.date :dStart

      t.timestamps
    end
  end
end
