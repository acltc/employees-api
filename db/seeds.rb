100.times do
  Employee.create(
                :first_name => Faker::Name.first_name,
                :last_name => Faker::Name.last_name,
                :email => Faker::Internet.email,
                :birthdate => Faker::Date.backward(50000),
                :ssn => Faker::Code.ean,
                :manager_id => rand(1..4)
                )
end

200.times do
  PhoneNumber.create(
    :employee_id => rand(1..100), 
    :number => Faker::PhoneNumber.phone_number,
    :phone_type => ["Cell", "Work", "Home", "Fax"].sample
    )
end

200.times do
  Address.create(
    :address_1 => Faker::Address.street_address,
    :address_2 => Faker::Address.secondary_address,
    :city => Faker::Address.city,
    :state => Faker::Address.state,
    :zip => Faker::Address.zip_code, 
    :employee_id => rand(1..100)
  )
end