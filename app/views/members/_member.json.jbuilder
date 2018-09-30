json.extract! member, :id, :mName, :mSex, :mDob, :mIdNo, :mTel, :mAddress, :created_at, :updated_at
json.url member_url(member, format: :json)
