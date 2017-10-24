FactoryBot.define do
  factory :service do
    value { Faker::Number.number(2) }
    package { FactoryBot.create(:package) }
  end
end
