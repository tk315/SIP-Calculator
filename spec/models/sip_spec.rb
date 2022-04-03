require 'rails_helper'

RSpec.describe Sip, type: :model do
  before :each do
    @sip1 = create(:sip)
  end

  it 'monthly investment should be present' do
    @sip1.monthly_investment = nil
    expect(@sip1).not_to be_valid
  end

  it 'expected return rate should be present' do
    @sip1.expected_return_rate = nil
    expect(@sip1).not_to be_valid
  end

  it 'time period should be present' do
    @sip1.time_period = nil
    expect(@sip1).not_to be_valid
  end

  it 'invested amount should be present' do
    @sip1.invested_amount = nil
    expect(@sip1).not_to be_valid
  end

  it 'estimated returns should be present' do
    @sip1.estimated_returns = nil
    expect(@sip1).not_to be_valid
  end

  it 'total value should be present' do
    @sip1.total_value = nil
    expect(@sip1).not_to be_valid
  end
end
