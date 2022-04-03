FactoryBot.define do
  factory :user do
    name { 'abc' }
    email { 'abc@gmail.com' }
    phone { '7777777777' }
    password { 'pass@123' }
    state { 'Rajasthan' }
    city { 'Jaipur' }
    dob { '2000-08-24' }
    pan { 'AZDLP5967L' }
  end
  factory :sip do
    monthly_investment { 3000 }
    expected_return_rate { 12 }
    time_period { 1 }
    invested_amount { 36000 }
    estimated_returns { 2428 }
    total_value { 38428 }
    date_of_application { '2000-08-24' }
    date_of_maturity { '2001-08-24' }
    user_id {1}
  end
  factory :lumpsum do
    total_investment { 3000 }
    expected_return_rate { 12 }
    time_period { 1 }
    invested_amount { 3000 }
    estimated_returns { 360 }
    total_value { 3360 }
    date_of_application { '2000-08-24' }
    date_of_maturity { '2001-08-24' }
     user_id {1}
  end
end
