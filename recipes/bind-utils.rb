case node['platform']
when "centos"
  package "bind-utils" do
    action :install
  end
end
