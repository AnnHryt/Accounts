class Account < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 30 }
  validates :last_name, presence: true, length: { maximum: 30 }
  VALID_SSN_REGEX = /\A(?!219-09-9999|078-05-1120)(?!666|000|9\d{2})\d{3}-(?!00)\d{2}-(?!0{4})\d{4}\z/
  validates :ssn, presence: true, 
                  format: { with: VALID_SSN_REGEX }
end
