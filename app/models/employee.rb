class Employee < ActiveRecord::Base
  has_many :addresses
  has_many :phone_numbers
  belongs_to :manager, class_name: "Employee"
  has_many :employees, foreign_key: :manager_id
end
