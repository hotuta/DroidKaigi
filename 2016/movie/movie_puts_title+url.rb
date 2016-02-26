require 'rubygems'
require 'selenium-webdriver'
wd = Selenium::WebDriver.for :chrome

num = 1

loop do
  num += 1 #動画URLをつずつ取得
  wd.get "https://www.youtube.com/channel/UCgK6L-PKx2OZBuhrQ6mmQZw/feed"
  wd.find_element(:xpath, "//ul[@id='browse-items-primary']/li[#{num}]/div[2]/div[2]/div[2]/div/div[1]/div[2]/h3/a").click
  sleep 2
  open("movie.txt", "a"){|f|
    title = wd.title
    url = wd.current_url
    f.puts "#{title},#{url}"
  }
end

wd.quit
