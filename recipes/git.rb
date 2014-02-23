case node['platform']
when "centos","ubuntu"
  package "git" do
    action :install
  end
end

template "/root/.gitconfig" do
  source "gitconfig.erb"
  owner "root"
  group "root"
  mode 0644
end
