class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	before_filter :set_constants

	def set_constants
		quote_id = rand(Quote.count) + 1
		@quote = Quote.find(quote_id)

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

		# TODO: enable Facebook API in the future
		# url = URI.parse('https://graph.facebook.com/v2.2/127100524044142?access_token='+Rails.application.secrets.facebook_page_token)
		# http = Net::HTTP.new(url.host, url.port)
		# http.use_ssl = true
		# http.verify_mode = OpenSSL::SSL::VERIFY_NONE
		# req = Net::HTTP::Get.new(url.to_s)
		# res = http.request(req).body

		# @yeondoo = JSON(res)
	end
end
