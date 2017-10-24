require 'rails_helper'

describe Service do
  subject { FactoryBot.create(:service) }

  it { is_expected.to be_valid }
  it { is_expected.to respond_to(:value) }
end
