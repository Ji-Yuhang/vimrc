#!/usr/bin/env ruby
require "open-uri"
require "json"
#require "mp3_player"
word = ARGV[0]
getwordui = "https://api.shanbay.com/bdc/search/?word=#{word}"
open( getwordui) do |io|
    jsonstr =  io.read
#   my_hash = JSON.parse('{"hello": "goodbye"}')
#   puts my_hash["hello"] => "goodbye"
    my_hash = JSON.parse(jsonstr)
    data = my_hash["data"]
    cndef = data["cn_definition"]
    endef = data["en_definition"]
    word = data["content"]
    pron = data["pron"]
    printf word
    if !pron.empty?
        print  "\t [ " + pron + " ]"
        print "\n"
    end

    audio = data["us_audio"]
    
    puts endef["defn"]
    puts cndef["defn"]
    #puts audio

    #system "mplayer " + audio + " >/dev/null 2>&1"
    exec("mplayer " + audio + " >/dev/null 2>&1") if fork.nil?

    localmdeid = "/Users/jiyuhang/Documents/Anki/用户1/collection.media/#{word}.mp3"
#    pid = fork { exec 'wget',audio,'-o',localmdeid }
#    pid = fork{ exec 'afplay', localmdeid }
end
