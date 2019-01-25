#!/usr/bin/env ruby
require 'redis'
r = Redis.new db: 2
words = ARGV
words.sort!
words.each do |word|
  puts r.keys "#{word}*"
end
