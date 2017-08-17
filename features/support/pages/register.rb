class Register

	def initialize (browser)
		@driver = browser
	end

	def click_on_register
		@driver.link(text: 'Register now').click
	end

end