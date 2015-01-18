require 'net/http'
require 'time'

class HomeController < ApplicationController

  def index
    max_number_of_posts = 5;

    url = URI.parse('https://graph.facebook.com/v2.2/ydcoffee/posts?fields=message,object_id,type&limit=20&access_token='+URI.encode(Rails.application.secrets.facebook_page_token))
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    req = Net::HTTP::Get.new(url.to_s)
    res = JSON(http.request(req).body)

    raw_posts = res['data']
    @posts = []
    number_of_posts = 0;
    raw_posts.each do |post|
      if post['type'] === 'photo'
        @posts.push(post)
        number_of_posts += 1
        if number_of_posts == max_number_of_posts then
          break
        end
      end
    end
  end

  def privacy
  end

  def blog
  end

  def menu
    menus = Menu.all
    @deliveries = []
    @handdrip_coffees = []
    @dutch_coffees = []
    @espresso_variations = []
    @red_teas = []
    @teas = []
    @beverages = []
    @mixed_wines = []
    @wines = []
    @sides = []
    @price_for_free_delivery = 40000
    @price_for_delivery = 3000
    @price_for_additional_refill = 2000
    @price_for_glass_wine = 8000

    menus.each do |menu|
      if menu[:tag].split.include? 'delivery'
        @deliveries.push(menu)
      else
        case menu[:tag]
          when 'hand drip'
            @handdrip_coffees.push(menu)
          when 'dutch'
            @dutch_coffees.push(menu)
          when 'espresso variation'
            @espresso_variations.push(menu)
          when 'red tea'
            @red_teas.push(menu)
          when 'mixed'
            @mixed_wines.push(menu)
          when ''
            case menu[:subcategory]
              when 'tea'
                @teas.push(menu)
              when 'beverage'
                @beverages.push(menu)
              when 'wine'
                @wines.push(menu)
            end
            case menu[:category]
              when 'sides'
                @sides.push(menu)
            end
        end
      end
    end
  end

  def sitemap
    render :layout => nil
    headers['Content-Type'] = 'application/xml'
  end
end