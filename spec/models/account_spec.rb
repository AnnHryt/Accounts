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
  it "is not valid when ssn is reserved number 219-09-9999" do 
    account.ssn = "219-09-9999"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
  end
  it "is not valid when ssn is reserved number 078-05-1120" do 
    account.ssn = "078-05-1120"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
  end
  it "is not valid when ssn starts with 666" do 
    account.ssn = "666-56-7890"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
  end
  it "is not valid when ssn starts with 000" do 
    account.ssn = "000-56-7890"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
  end
  it "is not valid when ssn group number is 00" do 
    account.ssn = "234-00-7890"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
  end
  it "is not valid when ssn ends with 0000" do 
    account.ssn = "234-56-0000"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
  end
   it "is not valid when ssn begins with anything between 900-999" do 
    account.ssn = "900-56-7890"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
    account.ssn = "999-56-7890"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
    account.ssn = "920-56-7890"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
  end
  it "is not valid when ssn is more than 9 digits" do 
    account.ssn = "234-56-78901"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
  end
  it "is not valid when ssn is less than 9 digits" do 
    account.ssn = "234-56-789"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
    account.ssn = "234"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
  end
  it "is not valid when ssn in not numeric" do 
    account.ssn = "234-56-789a"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
    account.ssn = "234-56-789@"
    expect(account).to_not be_valid
    expect(account.errors[:ssn].any?).to be_truthy
  end
end
