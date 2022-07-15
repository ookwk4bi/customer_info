class Customer < ApplicationRecord
validates :family_name,
presence: true, length: { maximum: 20 }
validates :given_name,
presence: true, length: { maximum: 20 }
validates :detail, presence: true

end
