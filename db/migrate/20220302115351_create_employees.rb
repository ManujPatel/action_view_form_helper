class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.string :email
      t.string :password
      t.date :birth_date
      t.string :gender
      t.string :hobbies
      t.string :address
      t.integer :mobile_number
      t.string :document

      t.timestamps
    end
  end
end
