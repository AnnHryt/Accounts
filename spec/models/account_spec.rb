require 'rails_helper'

RSpec.describe Account, type: :model do
  let(:account) { FactoryBot.build(:account) }
  
  it "has a valid factory" do
    expect(account.save).to be_truthy  
  end
end
