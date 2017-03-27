class Supplier < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :offers
  has_many :requisitions, through: :offers

  validates :name, uniqueness: { case_sensitive: false }

  mount_uploader :last_tax_declaration, DocumentUploader
  mount_uploader :rfc, DocumentUploader
  mount_uploader :account_status, DocumentUploader
  mount_uploader :constitutive_act, DocumentUploader
  mount_uploader :policies, DocumentUploader 
end
