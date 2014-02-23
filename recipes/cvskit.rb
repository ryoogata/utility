#
# Cookbook Name:: utility
# Recipe:: cvskit
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/usr/local/src/cvskit" do
  repository "git://github.com/onyxfish/csvkit.git"
  reference "master"
  action :sync
end

package "python-setuptools" do
  action :install
end

script "install-cvskit" do
  interpreter "bash"
  user "root"
  cwd "/usr/local/src/cvskit"
  code <<-EOH
    python setup.py install
  EOH
  not_if {File.exists?("/usr/bin/csvjson")}
end
