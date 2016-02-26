require 'rubygems'
require 'selenium-webdriver'
wd = Selenium::WebDriver.for :firefox

wd.get "https://www.youtube.com/channel/UCgK6L-PKx2OZBuhrQ6mmQZw/feed"
wd.find_element(:xpath, "//ul[@id='browse-items-primary']/li[2]/div[2]/div[2]/div[2]/div/div[1]/div[2]/h3/a").click
wd.navigate.back
wd.find_element(:xpath, "//ul[@id='browse-items-primary']/li[3]/div[2]/div[2]/div[2]/div/div[1]/div[2]/h3/a").click
wd.quit
