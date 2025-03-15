require 'rails_helper'

RSpec.describe Post, type: :model do

  context '全てのフィールドが有効な場合' do
    it '有効であること' do
      post = build(:post)
      expect(post).to be_valid
    end
  end

  context 'コメントが65535文字以内の場合' do
    it '有効であること' do
      post = build(:post, body: 'a' * 65535)
      expect(post).to be_valid
    end
  end

  context 'コメントが65535文字以上の場合' do
    it '無効であること' do
      post = build(:post, body: 'a' * 65536)
      post.valid?
      expect(post.errors[:body]).to include('は65535文字以内で入力してください')
    end
  end

  context '画像が存在しない場合' do
    it '無効であること' do
      post = build(:post, post_image: nil)
      post.valid?
      expect(post.errors[:post_image]).to include('を入力してください')
    end
  end

  context '画像が存在する場合' do
    it '有効であること' do
      post = build(:post)
      expect(post).to be_valid
    end
  end

  context 'コメントが存在しない場合' do
    it '有効であること' do
      post = build(:post, body: nil)
      expect(post).to be_valid
    end
  end
end
