class Customer < ApplicationRecord

belongs_to :account
validates :family_name,
presence: true, length: { maximum: 20 }
validates :given_name,
presence: true, length: { maximum: 20 }
validates :detail, presence: true
validates :account_id, presence: true
end
