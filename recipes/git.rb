case node['platform']
when "centos","ubuntu"
  package "git" do
    action :install
  end
end
