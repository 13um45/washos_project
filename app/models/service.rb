class Service < ApplicationRecord
  belongs_to :appointment, optional: true
  belongs_to :package, optional: true
  has_and_belongs_to_many :options
end
