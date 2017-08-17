require_relative "pages/HomePage"

module BbcSite

	def home_page
		HomePage.new(@driver)
	end

	def sign_in
		SignIn.new(@driver)
	end

	def register
		Register.new(@driver)
	end

end