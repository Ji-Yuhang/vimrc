#!/usr/bin/env ruby
path = ARGV[0]
fail 'specify filename to create; 缺少要创建的文件名 ' unless path

File.open(path, 'w'){|f| f.puts "#!/usr/bin/env ruby"}
File.chmod(0755, path)

system ENV["EDITOR"], path
