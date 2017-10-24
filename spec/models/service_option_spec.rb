require 'rails_helper'

describe ServiceOption do
  let(:option) { FactoryBot.create(:option) }
  let(:service) { FactoryBot.create(:service) }
  subject { FactoryBot.create(:service_option, option_id: option.id, service_id: service.id) }

  it { is_expected.to be_valid }
  it { is_expected.to respond_to(:option_id) }
  it { is_expected.to respond_to(:service_id) }
end
