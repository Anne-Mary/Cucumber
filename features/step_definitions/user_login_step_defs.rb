
Given(/^I access the BBC home page$/) do
 @driver = Watir::Browser.new :chrome 
 @driver.goto'https://www.bbc.co.uk'
end

And(/^I access the sign in page$/) do
  @driver.link(text: 'Sign in').click #should have an ID
end

When(/^I select register$/) do
  @driver.link(text: 'Register now').click
end

And(/^I input my date of birth$/) do
  @driver.text_field(id: "day-input").set1('')
end

And(/^I input necessary register details with the password details (.*)$/) do |password|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I receive the correct error(.*)$/) do |error_message|
  pending # Write code here that turns the phrase above into concrete actions
end


