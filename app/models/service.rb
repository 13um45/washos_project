class Service < ApplicationRecord
  belongs_to :appointment, optional: true
  belongs_to :package, optional: true
  has_many :service_options
  has_many :options, through: :service_options
  validates_presence_of :package_id
  accepts_nested_attributes_for :service_options, allow_destroy: true

  before_validation :set_value

  private
  def set_value
    self.value = self.service_options.map { |so| so.option.value }.sum + self.package.value
  end
end
