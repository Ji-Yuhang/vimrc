require "open-uri"
require "pp"
word = ARGV[0] 
x = ARGV[1] 
y = ARGV[2]
uri = "http://127.0.0.1:11111/lingoes?cmd=mini_search&text=#{word}&pos_x=#{x}&pos_y=#{y}"
open(uri)

