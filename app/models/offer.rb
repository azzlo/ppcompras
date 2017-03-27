class Offer < ApplicationRecord
  belongs_to :requisition
  belongs_to :supplier
  validates_presence_of :unit_pricing, :delivery_days, :validity, :credit_days
end
