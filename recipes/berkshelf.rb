#
# Cookbook Name:: utility
# Recipe:: berkshelf
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
case node['platform']
when "centos"
  %w{
    rubygems ruby ruby-devel
  }.each do |package_name|
    package package_name do
      action :install
    end
  end
when "ubuntu"
  %w{
    rubygems ruby ruby-dev
  }.each do |package_name|
    package package_name do
      action :install
    end
  end
end

execute "Install dep-selector-libgecode" do
  command "USE_SYSTEM_GECODE=1 gem install dep-selector-libgecode"
end

gem_package "berkshelf" do
  action :install
  version node['berkshelf']['version']
  options("--no-ri --no-rdoc")
end
