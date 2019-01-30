#!/usr/bin/env ruby
require 'awesome_print'
require 'rest_client'
require 'json'
require 'nokogiri'
word = ARGV[0]
def token
  memory_token = ENV['memory_token']
end
url = "https://memorysheep.com/api/v1/words/concise_enhanced"
params = {
  params: {
    word: word,
    token: token
  }
}
response = RestClient.get url, params
json = JSON.parse(response.body)
concise = json['concise']
#ap concise
content = concise['content']
html = concise['html_source']
doc = Nokogiri.HTML(html)
#ap doc.text
puts "#{content} : \t #{doc.text}"


