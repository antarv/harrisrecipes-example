Given(/^that I am on the registration page$/) do
  visit(Register)
end

When(/^I properly enter in my details$/) do
  on(Register).register_account
end

When(/^I attempt to register an account with blank details$/) do
  on(Register).attempt_register_with_blanks
end

When(/^I attempt to register an account and do not enter a password$/) do
  on(Register).attempt_register_no_email
end

When(/^I attempt to register an account with and do not provide email$/) do
  on(Register).attempt_register_no_password
end

Then(/^I am a registered user$/) do
  on(Register).should_contain_text("Your account has been created successfully")
end

Then(/^I am disallowed registration$/) do
  on(Register).should_contain_text("Please correct the following errors")
end



