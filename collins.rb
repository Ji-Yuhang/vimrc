#!/usr/bin/env ruby
require "open-uri"
require "json"
require "iconv"

module CollinsHttp
    def local_http_data(word)
        getwordui = "http://localhost/collinscndefs/?word=#{word}"
        open( getwordui) do |io|
            jsonstr =  io.read
            puts jsonstr
            #json = JSON.parse(jsonstr)
            #data = json["data"]
            return jsonstr
        end
        return nil
    end
    module_function :local_http_data
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
    CollinsHttp.local_http_data word
    parse_shanbay_data data
end

main
