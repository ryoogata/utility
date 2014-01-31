case node['platform']
when "centos"
  package "git" do
    action :install
  end
end
