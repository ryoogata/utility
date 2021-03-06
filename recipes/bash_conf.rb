#
# Cookbook Name:: bash
# Recipe:: bash_conf
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/root/.inputrc" do
  source "inputrc"
end

script "edit_inputrc" do
  interpreter "bash"
  user "root"
  code <<-EOH
    sed -i '/^$endif/i Control-p: history-search-backward' /etc/inputrc
    sed -i '/^$endif/i set show-all-if-ambiguous on' /etc/inputrc
  EOH
end

case node['platform']
when "centos"
  script "edit_inputrc" do
    interpreter "bash"
    user "root"
    code <<-EOH
      sed -i '$a complete -C aws_completer aws' /etc/bashrc
      sed -i '$a export TERM=xterm-256color' /etc/bashrc
    EOH
  end
end
