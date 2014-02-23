#
# Cookbook Name:: utility
# Recipe:: kitchen-docker
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{
  kitchen-docker kitchen-vagrant
}.each do |package_name|
  gem_package "#{package_name}" do
    action :install
    options("--no-ri --no-rdoc")
  end
end
