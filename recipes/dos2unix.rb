case node['platform']
when "centos","ubuntu"
  package "dos2unix" do
    action :install
  end
end
