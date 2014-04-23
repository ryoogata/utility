case node['platform']
when "centos"
  %w{
    centos-release-SCL ruby193
  }.each do |package_name|
    package package_name do
      action :install
    end
  end
end
