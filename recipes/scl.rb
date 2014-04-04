case node['platform']
when "centos"
  package "centos-release-SCL" do
    action :install
  end
end
