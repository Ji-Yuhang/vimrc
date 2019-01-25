#!/usr/bin/env ruby
#require 'profile'
match_words = ARGV
match_words.sort!
first = match_words[0]

File.open '/usr/share/dict/words','r' do |io|
  io.each_line do |word|
    #word.strip!
    #words = []
    match_words.each do |m|
      if word =~ /#{m}/
        puts word 
      end
      #words.push word if word =~ /#{m}/
    end
  end
end

#match_words.each do |m|
  #File.open '/usr/share/dict/words','r' do |io|
    #io.each_line do |word|
      ##word.strip!
      ##words = []
        #if word =~ /#{m}/
          #puts word 
        #end
        ##words.push word if word =~ /#{m}/
    #end
  #end

  ##words.push word if word =~ /#{m}/
#end

