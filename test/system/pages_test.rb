require 'application_system_test_case'

class PagesTest < ApplicationSystemTestCase
  test 'Home page exists' do
    visit root_url
    assert_selector "a", text: "What goes with...?"
  end
end
