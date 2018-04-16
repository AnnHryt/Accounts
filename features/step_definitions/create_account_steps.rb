Given("I am a student") do
  @account_page = visit(AccountPage)
end

When("I submit valid details") do |table_details|
   data=table_details.hashes
   data.each do |row|
    @account_page.enter_first_name row['First name'].to_s
    @account_page.enter_last_name row['Last name'].to_s
    @account_page.enter_ssn row['SSN'].to_s
   end
    @account_page.submit
end

Then("my account is created") do
   expect(on(SuccessPage).success_message_shown?).to eq true
end
