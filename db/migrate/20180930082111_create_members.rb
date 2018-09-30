class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :mName, limit: 30
      t.string :mSex, limit: 10
      t.date :mDob
      t.string :mIdNo, limit: 15
      t.string :mTel, limit: 10
      t.string :mAddress, limit: 100

      t.timestamps
    end
  end
end
