package 'tree' do
  action :install
end

package 'emacs'

package 'ntp' do
  action :install
end

package 'git' do
  action :install
end

#
# prit statement 'I have 4 apples'
# apple_count = 4
# puts "I have #{apple_count} apples"

#  MEMORY: #{node['memory']['total']}
file '/etc/motd' do
  content "Property of Santiago Gallo
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']} 
  CPU: #{node['cpu']['0']['mhz']}
" 
end

service 'ntpd' do
  action [ :enable, :start ]
end
