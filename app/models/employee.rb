class Employee < ApplicationRecord
    validates :email, uniqueness: true
    validates :employee_name, :email, :mobile_number,:birth_date,:password,:gender,:address, presence: true
    validates :mobile_number, length: {is: 10}
    validates :birth_date,  comparison: { less_than: Date.today, message: "birthdate can't be in future"}
    has_one_attached :document
end
