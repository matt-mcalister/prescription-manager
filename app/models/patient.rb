class Patient < ApplicationRecord
  has_many :prescriptions
  has_many :doctors, through: :prescriptions
end
