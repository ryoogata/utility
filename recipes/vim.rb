case node['platform']
when "centos"
  package "vim" do
    action :install
  end
end

cookbook_file "/etc/vimrc" do
  source "vimrc"
end
