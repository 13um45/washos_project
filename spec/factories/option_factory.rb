FactoryBot.define do
  factory :option do
    name { Faker::Lorem.word }
    value { Faker::Number.number(2) }
  end
end
