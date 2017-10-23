class Appointment < ApplicationRecord
  has_one :service
  validates_presence_of :customer_name, :appointment_time

end
