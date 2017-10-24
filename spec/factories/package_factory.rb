FactoryBot.define do
  factory :package do
    name { Faker::Lorem.word }
    value { 10 }
  end
end
