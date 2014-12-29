class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	before_filter :set_constants

	def set_constants
		quote_id = rand(Quote.count) + 1
		@quote = Quote.find(quote_id)

		url = URI.parse('https://graph.facebook.com/v2.2/127100524044142?access_token='+Rails.application.secrets.facebook_page_token)
		http = Net::HTTP.new(url.host, url.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE
		req = Net::HTTP::Get.new(url.to_s)
		res = http.request(req).body

		@yeondoo = JSON(res)
	end
end
