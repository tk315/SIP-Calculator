require 'rails_helper'

RSpec.describe Lumpsum, type: :model do
  before :each do
    @lumpsum1 = create(:lumpsum)
  end

  it 'total investment should be present' do
    @lumpsum1.total_investment = nil
    expect(@lumpsum1).not_to be_valid
  end

  it 'expected return rate should be present' do
    @lumpsum1.expected_return_rate = nil
    expect(@lumpsum1).not_to be_valid
  end

  it 'time period should be present' do
    @lumpsum1.time_period = nil
    expect(@lumpsum1).not_to be_valid
  end

  it 'invested amount should be present' do
    @lumpsum1.invested_amount = nil
    expect(@lumpsum1).not_to be_valid
  end

  it 'estimated returns should be present' do
    @lumpsum1.estimated_returns = nil
    expect(@lumpsum1).not_to be_valid
  end

  it 'total value should be present' do
    @lumpsum1.total_value = nil
    expect(@lumpsum1).not_to be_valid
  end
end
