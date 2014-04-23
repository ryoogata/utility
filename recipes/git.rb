package "git" do
  action :install
end

template "/root/.gitconfig" do
  source "gitconfig.erb"
  owner "root"
  group "root"
  mode 0644
end
