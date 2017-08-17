Given(/^I access the BBC home page$/) do
 home_page.visit
end

And(/^I access the sign in page$/) do
  sign_in.click_on_signin
end

When(/^I select register$/) do
  register.click_on_register 
  sleep 2
end

And(/^I input my date of birth$/) do #Flaky but then we need a text 
  @driver.text_field(id: "day-input").set('01')
  @driver.text_field(id: "month-input").set('02')
  @driver.text_field(id: "year-input").set('2000')
  @driver.button(text: "Next").click
end

And(/^I input necessary register details with the password details (.*)$/) do |password|
  @driver.text_field(id: "email-input").set('test@gmail.com')
  @driver.text_field(id: "password-input").set(password)
  @driver.text_field(id: "hometown-input").set("a")
end

Then(/^I receive the correct error(.*)$/) do |error_message|
  @driver.element(id: "form-error-password").text == error_message
end


