execute "apt-get update" do
  ignore_failure true
  action :nothing
end.run_action(:run) if node['platform'] == "ubuntu"

case node['platform']
when "ubuntu"
  %w{
    make gcc
  }.each do |package_name|
    package package_name do
      action :install
    end
  end
when "centos"
  %w{
    make gcc
  }.each do |package_name|
    package package_name do
      action :install
    end
  end
end
