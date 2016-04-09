#!/usr/bin/env ruby
require "open-uri"
require "json"
require "iconv"
require_relative "shanbay_local"

module ShanbayHttp
    def http_data(word)
        getwordui = "https://api.shanbay.com/bdc/search/?word=#{word}"
        open( getwordui) do |io|
            jsonstr =  io.read
            json = JSON.parse(jsonstr)
            data = json["data"]
            return data
        end
        return nil
    end
    def local_http_data(word)
        getwordui = "http://localhost/shanbayword/?word=#{word}"
        open( getwordui) do |io|
            jsonstr =  io.read
            #Iconv.conv('gbk','utf-8',result)
            json = JSON.parse(jsonstr)
            #data = json["data"]
            return json
        end
        return nil
    end
    module_function :http_data, :local_http_data
end

def parse_shanbay_data(data)
    cndef = data["cn_definition"]
    endef = data["en_definition"]
    word = data["content"]
    pron = data["pron"]
    printf word
    if !pron.empty?
        print  "\t [ " + pron + " ]"
        print "\n"
    end

    puts cndef["defn"]
    puts endef["defn"]

    audio = data["us_audio"]
    #system "mplayer " + audio + " >/dev/null 2>&1"
    exec("mplayer " + audio + " >/dev/null 2>&1") if fork.nil?

    #localmdeid = "/Users/jiyuhang/Documents/Anki/用户1/collection.media/#{word}.mp3"
    #    pid = fork { exec 'wget',audio,'-o',localmdeid }
    #    pid = fork{ exec 'afplay', localmdeid }

end

def main
    argu = ARGV[0]
    word = argu.chomp
    #data = ShanbayDB::local_data word
    data = nil
    data = ShanbayHttp::local_http_data word if data.nil?
    parse_shanbay_data data
end

main
