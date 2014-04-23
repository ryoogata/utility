#
# Cookbook Name:: utility
# Recipe:: git
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
case node['platform']
when "centos"
  %w{
    git-1.8.1.3-1.el6.x86_64.rpm perl-Git-1.8.1.3-1.el6.x86_64.rpm git-gui-1.8.1.3-1.el6.x86_64.rpm git-all-1.8.1.3-1.el6.x86_64.rpm gitk-1.8.1.3-1.el6.x86_64.rpm git-arch-1.8.1.3-1.el6.x86_64.rpm git-svn-1.8.1.3-1.el6.x86_64.rpm git-cvs-1.8.1.3-1.el6.x86_64.rpm gitweb-1.8.1.3-1.el6.x86_64.rpm git-email-1.8.1.3-1.el6.x86_64.rpm
  }.each do |rpm_file|
    cookbook_file "/tmp/#{rpm_file}" do
      source rpm_file
    end
  end
end

case node['platform']
when "centos"
  %w{
    git-1.8.1.3-1.el6.x86_64.rpm perl-Git-1.8.1.3-1.el6.x86_64.rpm git-gui-1.8.1.3-1.el6.x86_64.rpm git-all-1.8.1.3-1.el6.x86_64.rpm gitk-1.8.1.3-1.el6.x86_64.rpm git-arch-1.8.1.3-1.el6.x86_64.rpm git-svn-1.8.1.3-1.el6.x86_64.rpm git-cvs-1.8.1.3-1.el6.x86_64.rpm gitweb-1.8.1.3-1.el6.x86_64.rpm git-email-1.8.1.3-1.el6.x86_64.rpm
  }.each do |rpm_file|
    package rpm_file do
      action :install
      source "/tmp/#{rpm_file}"
      options "--nodeps"
      provider Chef::Provider::Package::Rpm
    end
  end
end

template "/root/.gitconfig" do
  source "gitconfig.erb"
  owner "root"
  group "root"
  mode 0644
end
