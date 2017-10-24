require 'rails_helper'

describe Appointment do
  subject { FactoryBot.create(:appointment) }

  it { is_expected.to be_valid }
  it { is_expected.to respond_to(:customer_name) }
  it { is_expected.to respond_to(:appointment_time) }
  it { is_expected.to respond_to(:total_value) }
end
