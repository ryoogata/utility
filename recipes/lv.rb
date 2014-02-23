#
# Cookbook Name:: utility
# Recipe:: jq
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
case node['platform']
when "centos"
  cookbook_file "/tmp/lv-4.51-1.el6.rf.x86_64.rpm" do
    source "lv-4.51-1.el6.rf.x86_64.rpm"
    mode "0755"
    not_if {File.exists?("/tmp/lv-4.51-1.el6.rf.x86_64.rpm")}
  end
end


case node['platform']
when "centos"
  package "lv" do
    action :install
    source "/tmp/lv-4.51-1.el6.rf.x86_64.rpm"
    provider Chef::Provider::Package::Rpm
  end
when "ubuntu"
  package "lv" do
    action :install
  end
end
