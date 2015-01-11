require 'net/http'
require 'time'

class HomeController < ApplicationController

  def index
    url = URI.parse('https://graph.facebook.com/v2.2/ydcoffee/posts?fields=message,object_id,type&access_token='+URI.encode(Rails.application.secrets.facebook_page_token))
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    req = Net::HTTP::Get.new(url.to_s)
    res = JSON(http.request(req).body)

    @posts = res['data']
  end

  def privacy
  end

  def blog
  end

  def menu

  end
end