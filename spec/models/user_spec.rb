require 'rails_helper'

RSpec.describe User, type: :model do
  it 'アカウント名、メールアドレスがあり、パスワードが6文字以上であれば有効である' do
    user = build(:user)
    expect(user).to be_valid
  end

  it 'パスワードが6文字以上であること' do
    user = build(:user, password: "12345", password_confirmation: "12345")
    user.valid?
    expect(user.errors[:password]).to include('は6文字以上で入力してください')
  end

  it 'アカウント名は255文字以内であること' do
    user = build(:user, name: "a" * 256)
    user.valid?
    expect(user.errors[:name]).to include('は255文字以内で入力してください')
  end

  it 'メールアドレスはユニークであること' do
    user1 = create(:user)
    user2 = build(:user, email: user1.email)
    user2.valid?
    expect(user2.errors[:email]).to include('はすでに存在します')
  end

  it 'アカウント名、メールアドレスは必須項目であること' do
    user = build(:user)
    user.email = nil
    user.name = nil
    user.valid?
    expect(user.errors[:email]).to include('を入力してください')
    expect(user.errors[:name]).to include('を入力してください')
  end
end
