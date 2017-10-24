class Option < ApplicationRecord
  has_many :service_options
  has_many :services, through: :service_options
end
