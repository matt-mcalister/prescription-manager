class Prescription < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def format
    "Take #{self.dose} of #{self.name}"
  end
end
