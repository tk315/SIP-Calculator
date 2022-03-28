require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'pqr', email: 'pqr@gmail.com', phone: '7777777777', password: 'pass@123', state: 'Rajasthan', city: 'Jaipur',dob: '2000-08-24', role: 1, pan: 'AZDLP5967L')
  end

  it 'email should be present' do
    @user.email = nil
    expect(@user).to be_valid
  end

  it 'phone should be present' do
    @user.phone = nil
    expect(@user).to be_valid
  end

  it 'password should be present' do
    @user.password = nil
    expect(@user).to be_valid
  end

  it 'email_verified should be present' do
    @user.email_verified = nil
    expect(@user).to be_valid
  end

  it 'phone_verified should be present' do
    @user.phone_verified = nil
    expect(@user).to be_valid
  end
end
