#!/usr/bin/env ruby
# pid = File.open("tmp/pids/server.pid").readlines.join.strip

# puts `sudo kill -9 #{pid}`

# `rails s -d`


pid = File.open("tmp/pids/unicorn.pid").readlines.join.strip

puts `sudo kill -9 #{pid}`

`bundle exec unicorn_rails -c unicorn.rb -D -E development`