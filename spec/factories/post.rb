FactoryBot.define do
  factory :post do
    post_image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image.jpg'), 'image/jpeg') }
    sequence(:body) { |n| "コメント#{n}" }
    association :user
  end
end