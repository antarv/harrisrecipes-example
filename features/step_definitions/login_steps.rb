Given(/^I am on the login page$/) do
  visit(Login)
end

When(/^I submit valid login information$/) do
  on(Login).perform_valid_login @username,@password
end

When(/^I submit invalid login information$/) do
  on(Login).perform_invalid_login
end

Then(/^I am logged in$/) do
  on(Login).should_contain_text("You are logged in")
end

Then(/^I am denied access$/) do
  on(Login).should_contain_text("Your email address or password does not match")
end

Given(/^I am not logged in$/) do
  visit Login do |page|
    page.log_out_if_logged_in
    expect(page.text).not_to match(/^ALL RECIPES./)
  end
end