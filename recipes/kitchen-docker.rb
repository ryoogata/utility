#
# Cookbook Name:: utility
# Recipe:: kitchen-docker
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

gem_package "berkshelf" do
  action :install
  options("-v node["berkshelf"]["version"] --no-ri --no-rdoc")
end

%w{
  kitchen-docker kitchen-vagrant psych chef lxc
}.each do |package_name|
  gem_package package_name do
    action :install
    options("--no-ri --no-rdoc")
  end
end
