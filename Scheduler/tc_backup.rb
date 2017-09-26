dt = Time.new
strdata = "#{dt.year}-#{dt.month}-#{dt.day}"

puts 'changing working dir for teamcity...'
Dir.chdir "/work/devops/teamcity"

dirname = "/mnt/Storage-3TB/archive/"
filename = "teamcity-#{strdata}.box"

puts "packaging #{filename} started: #{Time.new}"
`vagrant package --output #{dirname}#{filename}`
puts "packaging finished: #{Time.new}"

`vagrant up`
puts "vm is up: #{Time.new}"



