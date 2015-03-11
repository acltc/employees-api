class Employee < ActiveRecord::Base
  has_many :addresses
  has_many :phone_numbers
  belongs_to :manager, class_name: "Employee"
  has_many :employees, foreign_key: :manager_id

  def status
    if manager_id
      return "Regular Employee"
    else
      return "Manager"
    end
  end
end
