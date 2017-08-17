class SignIn

	def initialize (browser)
		@driver = browser
	end

	def click_on_signin
		 @driver.link(text: 'Sign in').click 
	end

end