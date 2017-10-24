FactoryBot.define do
  factory :service do
    value { }
    package { FactoryBot.create(:package) }

    factory :service_with_options do
      after(:create) do |service|
        service.options << FactoryBot.create_list(:option, 3)
      end
    end
  end
end
