#!/usr/bin/env ruby

#system "rake" while sleep 1
last_md5 = ""
while true do
  sleep 1
  md5 = `ls -alG | grep *.rb | md5sum`

  #puts md5
  if md5 != last_md5
    last_md5 = md5
    puts last_md5
    system "rake"
  end
end
