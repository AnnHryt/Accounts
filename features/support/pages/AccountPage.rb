require 'watir'
require 'page-object'

class AccountPage
  include PageObject

  page_url "http://localhost:3000/accounts/new"
  text_field(:first_name, :id => 'account_first_name')
  text_field(:last_name, :id => 'account_last_name')
  text_field(:ssn, :id => 'account_ssn')
  button(:btn_submit, :value => 'Submit')
  
  def enter_first_name first_name
    self.first_name = first_name
  end

  def enter_last_name last_name
    self.last_name = last_name
  end 

   def enter_ssn ssn
    self.ssn = ssn
  end  

  def submit
    btn_submit
  end
end 