require 'rails_helper'

describe Appointment do
  subject { FactoryBot.create(:appointment) }
  let(:app_w_service_and_opts) { FactoryBot.create(:appointment, :with_a_service_and_options) }
  let(:app_w_3_services) { FactoryBot.create(:appointment, :with_3_services) }
  let(:app_w_3_services_and_options) { FactoryBot.create(:appointment, :with_3_services_and_options) }

  it { is_expected.to be_valid }
  it { is_expected.to respond_to(:customer_name) }
  it { is_expected.to respond_to(:appointment_time) }
  it { is_expected.to respond_to(:total_value) }

  it 'should calculate the correct total value based on 1 service without options' do
    expect(subject.total_value).to eq(10)
  end

  it 'should calculate the correct total value based on 1 service with options' do
    expect(app_w_service_and_opts.total_value).to eq(40)
  end

  it 'should calculate the correct total value based on 3 services without options' do
    expect(app_w_3_services.total_value).to eq(30)
  end


  it 'should calculate the correct total value based on 3 services with options with options' do
    expect(app_w_3_services_and_options.total_value).to eq(120)
  end
end
