class BasePage
  include PageObject

  link(:display_profile_dropdown, class:'btn-primary dropdown-toggle')#/btn\-primary/^/dropdown\-toggle/
  link(:log_out, text:'Logout')

  #some stuff here
  def should_contain_text(text, error_message="Expected:'#{text}', never appeared")
    wait_until(5, error_message) do
      self.text.include? text
    end
  end

  def log_out_if_logged_in
    if display_profile_dropdown?
      display_profile_dropdown
      log_out
    end
  end
end