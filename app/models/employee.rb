class Employee < ApplicationRecord
    # frozen_string_literal: true
    validates :email, uniqueness: true
    validates :employee_name, :email, :mobile_number,:birth_date,:password,:gender,:address, presence: true
    validates :mobile_number, length: {is: 10}
    validates :birth_date,  comparison: { less_than: Date.today, message: "birthdate can't be in future"}
    has_many :addresses, dependent: :destroy
    accepts_nested_attributes_for :addresses, allow_destroy: true
    has_one_attached :document
end
