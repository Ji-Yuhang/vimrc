#!/usr/bin/env ruby
path = ARGV[0]
fail 'specify filename to create; 缺少要创建的文件名 ' unless path
if FileTest.exists? path
  puts 'file is exists; 文件已存在' 
else
  File.open(path, 'w'){|f| f.puts "#!/usr/bin/env ruby"}
end
File.chmod(0755, path)

system ENV["EDITOR"], path
