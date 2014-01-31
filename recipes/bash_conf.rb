#
# Cookbook Name:: bash
# Recipe:: bash_conf
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cookbook_file "/etc/profile.d/vim.sh" do
  source "vim.sh"
  mode "0644"
end

cookbook_file "/root/.inputrc" do
  source "inputrc"
end

script "edit_inputrc" do
  interpreter "bash"
  user "root"
  code <<-EOH
    sed -i '/^$endif/i Control-p: history-search-backward' /etc/inputrc
    sed -i '/^$endif/i set show-all-if-ambiguous on' /etc/inputrc
    sed -i '$a complete -C aws_completer aws' /etc/bashrc
  EOH
end
