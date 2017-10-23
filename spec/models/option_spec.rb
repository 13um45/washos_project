require 'rails_helper'

describe Option do
  subject { FactoryBot.create(:option) }

  it { is_expected.to be_valid }
  it { is_expected.to respond_to(:name)}
  it { is_expected.to respond_to(:value)}
end
