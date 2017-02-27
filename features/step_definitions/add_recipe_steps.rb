Given(/^I am on the Recipes page$/) do
  visit(Recipes)
  on(Recipes).login
end

When(/^I submit a recipe to the site$/) do
  on(Recipes).add_one_recipe
end

Then(/^my recipe should have been submitted$/) do
  on(Recipes).should_contain_text("Your recipe was created successfully")
  #TODO: check the last page? to see if it was submitted
end

And(/^I log in from the Recipes page$/) do
  on(Login).perform_valid_login @username, @password
end

When(/^I submit a recipe to the site with no details$/) do
  on(Recipes).add_one_recipe('','','')
end

Then(/^I should not be able to submit the recipe$/) do
  on(Recipes) do |page|
    expect(page.text).to match(/^Please correct the following errors./)
  end
end