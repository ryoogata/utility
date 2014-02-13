#
# Cookbook Name:: utility
# Recipe:: yajl
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/usr/local/src/yajl" do
  repository "git://github.com/lloyd/yajl.git"
  reference "master"
  action :sync
end

case node['platform']
when "centos"
  %w{
    cmake doxygen
  }.each do |package_name|
    package "#{package_name}" do
      action :install
    end
  end
when "ubuntu"
  package "cmake" do
    action :install
  end
end

script "install-yajl" do
  interpreter "bash"
  user "root"
  cwd "/usr/local/src/yajl"
  code <<-EOH
    ./configure
    make
    make install
  EOH
  not_if {File.exists?("/usr/local/bin/json_verify")}
end
