require 'watir' 
require_relative 'bbc_site'

World(BbcSite) #takes a module as a whole

driver = Watir::Browser.new :chrome

	Before do 
		@driver = driver
	end