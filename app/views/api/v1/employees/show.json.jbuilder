json.id @employee.id
json.first_name @employee.first_name
json.last_name @employee.last_name
json.email @employee.email
json.birthdate @employee.birthdate
json.status @employee.status

if @employee.manager
  json.manager do
    json.first_name @employee.manager.first_name
    json.last_name @employee.manager.last_name
    json.email @employee.manager.email
  end
end

json.addresses @employee.addresses do |address|
  json.address_1 address.address_1
  json.address_2 address.address_2
  json.city address.city
  json.state address.state
  json.zip address.zip
end

json.phone_numbers @employee.phone_numbers do |phone_number|
  json.number phone_number.number
  json.number_type phone_number.phone_type
end