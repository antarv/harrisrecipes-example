require_relative 'base_page'

class EditProfile < BasePage
  page_url BASE_URL

  link(:display_profile_dropdown, class:'btn btn-default btn-primary dropdown-toggle')
  link(:edit_profile, text:'Edit Profile')
  text_field(:chef_name, id:'chef_chefname')
  text_field(:chef_email, id:'chef_email')
  text_field(:chef_password, id:'chef_password')
  button(:submit, text:'Edit Profile')

  def edit_chef_name(chef_name = "Example Man")
    display_profile_dropdown
    edit_profile
    self.chef_name = chef_name
    submit
  end

  def edit_chef_email(chef_email="test333@example.com")
    display_profile_dropdown
    edit_profile
    self.chef_email =
    submit
  end

  def edit_chef_password(chef_password="goodPassword")
    display_profile_dropdown
    edit_profile
    self.chef_password = chef_password
    submit
  end

end