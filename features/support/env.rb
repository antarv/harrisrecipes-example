require 'watir'
require 'page-object'
require 'page-object/page_factory'

browser = Watir::Browser.new :chrome, {detach:true}
BASE_URL = 'http://harrisrecipes.herokuapp.com'

World(PageObject::PageFactory)

Before do
  @username = 'test222@example.com'
  @password = 'stupidPassword'
  @browser = browser
end

at_exit do
 # browser.close
end