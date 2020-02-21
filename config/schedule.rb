# Use this file to easily define all of your cron jobs.
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

set :environment, "development"
set :output, ‘log/whenever.log’ 


every :day, at: '9:19pm' do
    p "Cron Job Started"
    rake 'fetch_data:store_data_in_db'
    p "Cron Job Ended"
end


# Learn more: http://github.com/javan/whenever