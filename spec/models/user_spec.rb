require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user1 = create(:user)
  end

  it 'name should be present' do
    @user1.name = nil
    expect(@user1).not_to be_valid
  end

  it 'email should be present' do
    @user1.email = nil
    expect(@user1).not_to be_valid
  end

  it 'email should be in correct format' do
    @user1.email = 'ffrfr'
    expect(@user1).not_to be_valid
  end

  it 'phone should be present' do
    @user1.phone = nil
    expect(@user1).not_to be_valid
  end

  it 'phone number should be of 10 digits' do
    @user1.phone = '855896644'
    expect(@user1).not_to be_valid
  end

  it 'password should be present' do
    @user1.password = nil
    expect(@user1).not_to be_valid
  end

  it 'password should be of length grater than or equal to 6' do
    @user1.password = '45578'
    expect(@user1).not_to be_valid
  end

  it 'state should be present' do
    @user1.state = nil
    expect(@user1).not_to be_valid
  end

  it 'city should be present' do
    @user1.city = nil
    expect(@user1).not_to be_valid
  end

  it 'dob should be present' do
    @user1.dob = nil
    expect(@user1).not_to be_valid
  end

  it 'pan should be present' do
    @user1.pan = nil
    expect(@user1).not_to be_valid
  end

  it 'pan should be of correct format' do
    @user1.pan = '45646'
    expect(@user1).not_to be_valid
  end
end
