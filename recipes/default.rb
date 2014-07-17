#
# Cookbook Name:: lua-cjson
# Recipe:: default
#
# Copyright 2014, Chad Barraford
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'git'

git node['lua-cjson']['git']['dir'] do
  repository node['lua-cjson']['git']['repository']
  revision node['lua-cjson']['git']['revision']
  action :checkout
end

package node['lua-cjson']['lua-package']
package node['lua-cjson']['lua-dev-package']

bash 'install-lua-cjson' do
  user 'root'
  cwd node['lua-cjson']['git']['dir']
  code <<-EOH
    make #{node['lua-cjson']['env-vars']} install
  EOH
end
