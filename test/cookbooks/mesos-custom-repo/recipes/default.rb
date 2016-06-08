#
# This recipe configures a mesos custom repo
#

if node['platform'].eql?('ubuntu') && node['platform_version'].eql?('16.04')
  include_recipe 'apt'
  apt_repository 'mesosphere' do
    uri 'http://repos.mesosphere.io/ubuntu'
    distribution 'wily'
    keyserver 'hkp://keyserver.ubuntu.com:80'
    key 'E56151BF'
    components ['main']
  end
else
  include_recipe 'mesos::repo'
end
