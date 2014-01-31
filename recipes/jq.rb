#
# Cookbook Name:: utility
# Recipe:: jq
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/usr/local/bin/jq" do
  source "jq"
  mode "0755"
  not_if {File.exists?("/usr/local/bin/jq")}
end
