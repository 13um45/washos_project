class Appointment < ApplicationRecord
  has_many :services, dependent: :destroy
  has_many :packages, through: :services
  has_many :options, through: :services
  accepts_nested_attributes_for :services, allow_destroy: true

  validates_presence_of :customer_name, :appointment_time
  validates :services, presence:  true


  before_save :set_total_value

  private
  def set_total_value
    self.total_value = self.services.map(&:value).sum
  end
end
