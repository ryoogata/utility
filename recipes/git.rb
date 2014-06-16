package "git" do
  action :install
end

case node['platform']
when "centos"
  template "/root/.gitconfig" do
    source "gitconfig.erb"
    owner "root"
    group "root"
    mode 0644
  end
when "amazon"
  template "/home/ec2-user/.gitconfig" do
    source "gitconfig.erb"
    owner "ec2-user"
    group "ec2-user"
    mode 0644
  end
end

