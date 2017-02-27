require_relative 'base_page'

class Register < BasePage
  page_url BASE_URL + '/register'

  text_field(:chef_name, id:'chef_chefname')
  text_field(:email, id:'chef_email')
  text_field(:password, id:'chef_password')
  button(:submit, name:'commit')

  def register_account(name='Ted', email='ted@example.com', password='pass12345')
    self.chef_name = name
    self.email = email
    self.password = password
    submit
  end

  def attempt_register_with_blanks
    register_account('','','')
  end

  def attempt_register_no_email
    register_account('Ted','','pass12345')
  end

  def attempt_register_no_password
    register_account('Ted','ted@example.com', '')
  end

end