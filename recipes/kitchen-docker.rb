#
# Cookbook Name:: utility
# Recipe:: kitchen-docker
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
gem_package "kitchen-docker" do
  action :install
  options("--no-ri --no-rdoc")
end
