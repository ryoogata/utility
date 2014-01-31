case node['platform']
when "centos"
  package "dos2unix" do
    action :install
  end
end
