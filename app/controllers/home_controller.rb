require 'net/http'
require 'time'

class HomeController < ApplicationController
  MAX_NUMBER_OF_POSTS = 5;

  def index
    @posts = []

    if !Rails.application.secrets.facebook_page_token.blank?
      url = URI.parse('https://graph.facebook.com/v2.2/ydcoffee/posts?type=photo,link&fields=message,object_id,type,full_picture&limit=20&access_token='+URI.encode(Rails.application.secrets.facebook_page_token))
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      req = Net::HTTP::Get.new(url.to_s)
      res = JSON(http.request(req).body)

      if !res.has_key?('error')
        raw_posts = res['data']
        @posts = []
        number_of_posts = 0;
        raw_posts.each do |post|
          if post['type'] === 'photo' || post['type'] === 'link'
            @posts.push(post)
            number_of_posts += 1
            if number_of_posts === MAX_NUMBER_OF_POSTS then
              break
            end
          end
        end
      end
    end
  end

  def privacy
  end

  def sitemap
    render :layout => nil
    headers['Content-Type'] = 'application/xml'
  end
end