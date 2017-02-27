When(/^I go to edit my chef name$/) do
  on(EditProfile).edit_chef_name
end

Then(/^the update should be succcessful$/) do
  on(EditProfile).should_contain_text('Your profile has been updated successfully')
end

When(/^I go to edit my chef email$/) do
  on(EditProfile).edit_chef_email
end
