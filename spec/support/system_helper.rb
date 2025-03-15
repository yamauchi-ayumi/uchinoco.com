module SystemHelper
  def login_as(user)
    visit root_path
    click_link "ログイン"
    fill_in 'メールアドレス', with: user.email
    fill_in 'パスワード', with: '123456'
    click_button 'ログイン'
    expect(page).to have_current_path("/posts", ignore_query: true)
  end
end

RSpec.configure do |config|
  config.include SystemHelper
end