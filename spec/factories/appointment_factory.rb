FactoryBot.define do
  factory :appointment do
    appointment_time { Faker::Date.forward(1) }
    customer_name { Faker::Name }
    services { [FactoryBot.create(:service)] }
    total_value {}

    trait :with_a_service_and_options do
      services { [FactoryBot.create(:service_with_options)] }
    end

    trait :with_3_services do
      services { FactoryBot.create_list(:service, 3) }
    end

    trait :with_3_services_and_options do
      services { FactoryBot.create_list(:service_with_options, 3) }
    end
  end
end
