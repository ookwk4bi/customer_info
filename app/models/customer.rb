class Customer < ApplicationRecord
has_many :comments

validates :family_name,
presence: true, length: { maximum: 20 }
validates :given_name,
presence: true, length: { maximum: 20 }
validates :detail, presence: true
validates :account_number, presence: true
end
