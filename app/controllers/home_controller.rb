require 'net/http'
require 'time'

class HomeController < ApplicationController

	def index
		@isOpen = nil
		@openHour = nil
		@closeHour = nil
		t = Time.zone.now

		url = URI.parse('https://graph.facebook.com/v2.2/723968317690690?access_token='+Rails.application.secrets.facebook_page_token)
		req = Net::HTTP::Get.new(url.to_s)
		res = Net::HTTP.start(url.host, url.port) {|http|
			http.request(req)
		}
		puts res.body

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

		quote_id = rand(Quote.count) + 1
		@quote = Quote.first(:conditions => [ "id >= ?", quote_id])
	end

	def privacy
	end
end
