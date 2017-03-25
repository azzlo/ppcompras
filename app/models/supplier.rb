class Supplier < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :offers
  has_many :requisitions, through: :offers

  validates :name, uniqueness: { case_sensitive: false }
end
