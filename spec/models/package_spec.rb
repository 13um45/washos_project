require 'rails_helper'

describe Package do
  subject { FactoryBot.create(:package) }

  it { is_expected.to be_valid }
  it { is_expected.to respond_to(:name)}
  it { is_expected.to respond_to(:value)}
end
