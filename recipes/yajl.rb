#
# Cookbook Name:: utility
# Recipe:: yajl
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "utility::git"
include_recipe "utility::buildenv"

git "#{node['yajl']['_SOURCE_DOWNLOAD_DIR']}/yajl" do
  repository "git://github.com/lloyd/yajl.git"
  reference "master"
  action :sync
end

case node['platform']
when "centos"
  %w{
    cmake doxygen
  }.each do |package_name|
    package package_name do
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
  cwd "#{node['yajl']['_SOURCE_DOWNLOAD_DIR']}/yajl"
  code <<-EOH
    ./configure
    make
    make install
  EOH
  not_if {File.exists?("/usr/local/bin/json_verify")}
end

directory "#{node['yajl']['_SOURCE_DOWNLOAD_DIR']}/yajl" do
  recursive true
  action :delete
end
