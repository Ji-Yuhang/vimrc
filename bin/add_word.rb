#!/usr/bin/env ruby
require 'rest_client'
require 'awesome_print'
require 'pry'
require 'json'
def token
  memory_token = ENV['memory_token']
end

def add_word(word)
  url = "https://memorysheep.com/api/v1/words/learning"
  params = {
    word: word,
    token: token
  }
  response = RestClient.post url, params
  #ap response.code
  begin 
    json = JSON.parse response.body
    ap json
    if json["data"] && json["data"]["learning"]
      ap "增加单词成功"
    end
    #binding.pry

  rescue => e
    ap "增加单词失败"
    ap e
    ap "增加单词失败"
  end
  
end

word = ARGV[0]
if word.nil?
  ap  "缺少参数"
else
  add_word (word) 
end

