#!/usr/bin/env ruby
problem = ARGV[0]
fail '必须指定PAT题目' if problem.nil?
path = Dir.home + "/git/pat_cpp/" + problem
Dir.mkdir path unless Dir.exist? path
Dir.chdir path
file = path +"/"+problem+ ".rb"
if FileTest.exists? file
  puts 'file is exists; 文件已存在' 
else
  File.open(file, 'w'){|f| f.puts "#!/usr/bin/env ruby\n\n"}
end
File.chmod(0755, file)

system ENV["EDITOR"], file
