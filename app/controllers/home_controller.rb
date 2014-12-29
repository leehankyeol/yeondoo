require 'net/http'
require 'time'

class HomeController < ApplicationController

	def index
		@isOpen = nil
		@openHour = nil
		@closeHour = nil
		t = Time.zone.now

		case t.strftime("%A")
		when "Monday", "Tuesday", "Wednesday", "Thursday"
			@openHour = Time.zone.now.change(hour: 10)
			@closeHour = Time.zone.now.change(hour: 22)
		when "Friday", "Saturday"
			@openHour = Time.zone.now.change(hour: 11)
			@closeHour = Time.zone.now.change(hour: 22, min: 30)
		when "Sunday"
			@openHour = Time.zone.now.change(hour: 11)
			@closeHour = Time.zone.now.change(hour: 21)
		else
		end

		if (@openHour..@closeHour).cover?(t)
			@isOpen = true
		else
			@isOpen = false
		end
	end

	def privacy
	end
end
