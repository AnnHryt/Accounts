require 'watir'
require 'page-object'

class SuccessPage
  include PageObject

 paragraph(:notice, :id => 'notice')

def success_message_shown?
  notice == 'Account was successfully created.'
end
end  