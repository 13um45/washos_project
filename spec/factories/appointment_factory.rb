FactoryBot.define do
  factory :appointment do
    appointment_time { Faker::Date.forward(1) }
    customer_name { Faker::Name }
    services { [FactoryBot.create(:service)] }
    total_value { }
  end
end
