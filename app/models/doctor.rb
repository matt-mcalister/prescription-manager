class Doctor < ApplicationRecord
  has_many :prescriptions
  has_many :patients, through: :prescriptions

  def format
    self.name + " - " + self.specialty
  end
end
