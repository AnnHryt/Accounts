class Account < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :ssn, presence: true
end
