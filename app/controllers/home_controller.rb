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
  end