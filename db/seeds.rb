# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1..10.times do |id|
  user = User.create(
    name: Faker::Name.unique.name,
    email: Faker::Internet.email,
    password: 'pass@123',
    phone: '8956978569',
    state: 'Rajasthan',
    city: 'Jaipur',
    dob: '2000-08-24',
    role: id % 2,
    pan: 'AZDLP5967L'
  )
  user.sip.create(
    monthly_investment: 500,
    expected_return_rate: 10,
    time_period: 10,
    date_of_application: '2022-03-28',
    date_of_maturity: '2032-03-28',
    invested_amount: 60_000,
    estimated_returns: 43_276,
    total_value: 103_276
  )
  user.lumpsum.create(
    total_investment: 500,
    expected_return_rate: 10,
    time_period: 10,
    date_of_application: '2022-03-28',
    date_of_maturity: '2032-03-28',
    invested_amount: 500,
    estimated_returns: 797,
    total_value: 1297
  )
end
