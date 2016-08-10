class VerificationCode < ActiveRecord::Base
  # Validations
  validates_presence_of :email, :code

  # TODO: Test and implement
  # Email must be email
  # Code must be 6 chars (no more, no less)
  # Uniqueness among email-code
end
