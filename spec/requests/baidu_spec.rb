require "selenium-webdriver"
require "rails_helper"

RSpec.describe "百度测试", :type => :request do
  it "creates a Widget and redirects to the Widget's page" do
    driver = Selenium::WebDriver.for :firefox
    driver.navigate.to "http://baidu.com"

    element = driver.find_element(:name, 'wd')
    element.send_keys "暴走漫画"
    element.submit
    expect(driver.page_source).to include("baozoumanhua.com")
    driver.find_element("class", "favurl").click
  end
end


# puts driver.title

# driver.quit