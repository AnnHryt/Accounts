require 'rails_helper'

RSpec.describe Account, type: :model do
  let(:account) { FactoryBot.build(:account) }
  
  it "has a valid factory" do
    expect(account.save).to be_truthy  
  end
  it "is not valid without a first name" do 
    account.first_name = nil
    expect(account).to_not be_valid
    expect(account.errors[:first_name].any?).to be_truthy
  end
  it "is not valid without a last name" do 
    account.last_name = nil
    expect(account).to_not be_valid
    expect(account.errors[:last_name].any?).to be_truthy
  end
  it "is not valid without a ssn" do 
    account.ssn = nil
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
  end
end
