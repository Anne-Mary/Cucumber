class HomePage

	def initialize (browser)
		@driver = browser
	end

	def visit
		@driver.goto 'https://www.bbc.co.uk'
	end

end