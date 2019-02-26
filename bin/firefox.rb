require 'sinatra'
require 'sinatra/base'
require 'watir'
require 'watir-webdriver'
require 'colorize'
require 'nokogiri'
require 'uri'
require 'date'

# Login Process ---
puts ("Firefox Started...").yellow
$browser = Watir::Browser.new :firefox
class App < Sinatra::Base
  set :bind, '0.0.0.0'
  set :environment, :production

  get '/' do
    word =  params['word']
    url = "https://cn.bing.com/images/search?q=#{word}"
    uri = URI.encode(url)
    $browser.goto(uri)
    word
  end
  get '/anki' do
    word =  params['word']
    url = "https://memorysheep.com/baicizhans/anki?word=#{word}"
    uri = URI.encode(url)
    $browser.goto(uri)
    file = Date.today.to_s + "-words.txt"
    `echo #{word} >> #{file}` if word
    word
  end
end

App.run!
