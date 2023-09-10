require 'httparty'
require 'nokogiri'

url = 'https://www.anekdot.ru/release/anekdot/week/'
html = HTTParty.get(url)
doc = Nokogiri::HTML(html)

puts doc.css('.text')[1].text
