require 'rails_helper'

RSpec.describe AccountsController, type: :controller do
 
  let(:valid_attributes) {
    { first_name: 'John', last_name: 'Smith', ssn: '234-56-7890' }
  }
  let(:valid_session) { {} }

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Account" do
        expect {
          post :create, params: {account: valid_attributes}, session: valid_session
          }.to change(Account, :count).by(1)
        end

        it "redirects to success page" do
          post :create, params: {account: valid_attributes}, session: valid_session
          expect(response).to redirect_to(accounts_path)
        end
      end
    end
end
