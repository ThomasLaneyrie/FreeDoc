class Speciality < ApplicationRecord
  has_many :join_table_doctor_cities
  has_many :doctors, through: :join_table_doctor_cities
end
