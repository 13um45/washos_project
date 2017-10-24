FactoryBot.define do
  factory :option do
    name { Faker::Lorem.word }
    value { 10 }
  end
end
