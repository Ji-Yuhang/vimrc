#!/usr/bin/env ruby

class Thesaurus
  @@thesaurus_path = ENV["HOME"] + '/vimrc'+ '/marshal_dump_verb.dump'
  
  begin
    @@thesaurus = {}
    @@thesaurus = Marshal.load File.read @@thesaurus_path
  rescue
  end

  def self.thesaurus(word)
    #puts word
    #puts @@thesaurus.size
    #puts @@thesaurus.include? word
    return @@thesaurus[word]
  end

  def self.all_thesaurus
    @@thesaurus
  end
end

#puts Thesaurus.thesaurus(ARGV[0])

