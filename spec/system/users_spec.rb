require 'rails_helper'

RSpec.describe "アカウント登録", type: :system do
  context '入力情報正常系' do
    it 'アカウントが新規作成できること' do
      visit '/users/new'
      expect {
        fill_in 'user_name', with: 'テストたろう'
        fill_in 'user_email', with: 'example@example.com'
        fill_in 'user_password', with: '123456'
        fill_in 'user_password_confirmation', with: '123456'
        click_button '登録'
        expect(page).to have_current_path("/login", ignore_query: true)
      }.to change { User.count }.by(1)
      expect(page).to have_content('アカウント登録が完了しました'), 'フラッシュメッセージ「アカウント登録が完了しました」が表示されていません'
    end
  end

  context '入力情報異常系' do
    it 'アカウントが新規作成できない' do
      visit '/users/new'
      expect {
        fill_in 'user_email', with: 'example@example.com'
        click_button '登録'
      }.to change { User.count }.by(0)
      expect(page).to have_content('アカウント登録に失敗しました'), 'フラッシュメッセージ「アカウント登録に失敗しました」が表示されていません'
      expect(page).to have_content('アカウント名 を入力してください'), 'エラーメッセージ「アカウント名を入力してください」が表示されていません'
      expect(page).to have_content('パスワード は6文字以上で入力してください'), 'フラッシュメッセージ「パスワードは6文字以上で入力してください」が表示されていません'
    end
  end
end
