#!/usr/bin/env ruby
match_words = ARGV
match_words.sort!
File.open '/usr/share/dict/words','r' do |io|
  io.each_line do |word|
    word.strip!
    words = []
    match_words.each do |m|
      #    puts word if word =~ /#{m}/
      words.push word if word =~ /#{m}/
    end
  end
end

require 'benchmark'
require 'awesome_print'

Benchmark.bm(10) do |b|
  b.report("read") do 
  words = []
  File.read('/usr/share/dict/words').each_line do |word|
    word.strip!
    match_words.each do |m|
      #puts word if word =~ /#{m}/
      words.push word if word =~ /#{m}/
    end
  end
  end
  b.report("io") do
    File.open '/usr/share/dict/words','r' do |io|
      io.each_line do |word|
        word.strip!
        words = []
        match_words.each do |m|
          #    puts word if word =~ /#{m}/
          words.push word if word =~ /#{m}/
        end
      end
    end
  end
end
