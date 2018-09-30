class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :brandCode, limit: 5, null:  false
      t.string :brandName, limit: 30, :null => false

      t.timestamps
    end
  end
end
