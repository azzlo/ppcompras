class Offer < ApplicationRecord
  belongs_to :requisition
  belongs_to :supplier
end
