require_relative 'base_page'

class Login < BasePage

  page_url BASE_URL

  link(:goto_login, text:'Log in')
  text_field(:email, id:'email')
  text_field(:password, id:'password')
  button(:submit, name:'commit')


  def perform_valid_login(username, password)
    self.goto_login_element.click
    self.email = username
    self.password = password
    submit
  end

  def perform_invalid_login(username="something@whatever.site", password="abcde2894892849")
    goto_login_element.click
    self.email = username
    self.password = password
    submit
  end

end