require File.expand_path '../../spec_helper.rb', __FILE__

RSpec.describe VerificationCode, type: :model do

  it 'has a valid factory' do
    expect(build(:verification_code)).to be_valid
  end

  describe 'validations' do

    let (:required_attrs) {
      {
        email: Faker::Internet.email,
        code: Faker::PhoneNumber.subscriber_number(6)
      }
    }

    it 'should create a valid Verification Code' do
      verification_code = VerificationCode.new(required_attrs)
      expect(verification_code.valid?).to eq(true)
    end

    it 'does not create an Verification Code if a required attribute is missing' do
      required_attrs.each do |key, _value|
        verification_code = VerificationCode.new(required_attrs.except(key))
        expect(verification_code.valid?).to eq(false)
      end
    end
  end
end
