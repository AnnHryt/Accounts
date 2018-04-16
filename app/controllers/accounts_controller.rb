class AccountsController < ApplicationController

 def new
   @account = Account.new
 end

 def create
  @account = Account.new(account_params)
  @account.save
  if @account.save
    redirect_to accounts_path, notice: 'Account was successfully created.' 
  else
    render :new
  end
end

private

def account_params
  params.require(:account).permit(:first_name, :last_name, :ssn)
end
end
