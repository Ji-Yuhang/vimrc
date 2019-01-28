#!/usr/bin/env ruby

require 'rest-client'
require 'awesome_print'
require 'json'

def token
  memory_token = ENV['memory_token']
  fail "memory_token 环境变量未设置" if memory_token.nil?
  memory_token
end

#HOST = "http://localhost:3000/"
HOST = "https://memorysheep.com/"
options = ARGV

def new_todo(title)
  fail "不能创建标题为空的任务清单" if title.nil? or title.empty?

  response = RestClient.post(HOST+"api/v1/tasks/", {
    token: token,
    title: title,
  })
  json = JSON.parse response.body
  task = json["task"]
  if task
    ap "创建任务清单成功 #{HOST}tasks/#{task["id"]}"
    ap task
  end
end

def get_todos
  response = RestClient.get(HOST+"api/v1/tasks/", {
    params: {
      token: token,
    }
  })
  json = JSON.parse response.body
  total = json["total"]
  tasks = json["data"]
  #tasks = data.map{|t| t.slice("id", "title")}
  tasks.each do |t|
    created_at = Time.parse(t["created_at"]).strftime "%F %T"
#"\e[9m" + "\e[0m" 
#echo -e "\e[1mbold\e[0m"
#echo -e "\e[3mitalic\e[0m"
#echo -e "\e[4munderline\e[0m"
#echo -e "\e[9mstrikethrough\e[0m"
#echo -e "\e[31mHello World\e[0m"
#echo -e "\x1B[31mHello World\e[0m"
    finished = !t["completed_at"].nil?
    if finished
      puts "\e[9m" + "#{t["id"]}\t #{created_at}\t #{t["title"]} " + "\e[0m"
    else
      puts "#{t["id"]}\t #{created_at}\t #{t["title"]}\t "
    end
  end
end

def update_todo(id, options={})
  fail "ID 不能为空" if id.nil?
  response = RestClient.post(HOST+"api/v1/tasks/"+id, {
     token: token,
     task: options
  })
  task = JSON.parse response.body
  ap task
end

action = options[0]

if action == 'new'
  new_todo(ARGV[1])
elsif action == 'list'
  get_todos
elsif action == 'finish'
  update_todo(ARGV[1], completed_at: Time.now)
else
end



