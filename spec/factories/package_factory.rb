FactoryBot.define do
  factory :package do
    name { Faker::Lorem.word }
    value { Faker::Number.number(2) }
  end
end
