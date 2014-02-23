# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
every 1.hour do
  command "rm /etc/dnsmasq.d/dnsmasq_hosts_latest.conf"
  command "curl http://localhost/hosts/dnsmasq.txt >> /etc/dnsmasq.d/dnsmasq_hosts_latest.conf"
  command "/etc/dnsmasq.d/current_hosts.sh"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
