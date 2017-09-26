# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# every :sunday, at: '21:30' do
# #every 1.day, at: '21:30' do
#   cmd = "ruby ~/lib/tc_backup.rb  > ~/lib/log.txt  2>&1"
#   command cmd
# end


every 1.day, at: '17:26' do
  cmd = "ruby ~/test/backup.rb  > ~/test/log.txt  2>&1"
  command cmd
end