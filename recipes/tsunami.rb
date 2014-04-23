include_recipe "utility::buildenv"

cookbook_file "#{node['tsunami']['_SOURCE_DOWNLOAD_DIR']}/tsunami-v1.1-cvsbuild42.tar.gz" do
  source "tsunami-v1.1-cvsbuild42.tar.gz"
  not_if {File.exists?("#{node['tsunami']['_SOURCE_DOWNLOAD_DIR']}/tsunami-v1.1-cvsbuild42.tar.gz")}
end

case node['platform']
when "centos"
  %w{
   autoconf automake
  }.each do |package_name|
    package package_name do
      action :install
    end
  end
when "ubuntu"
  %w{
   autoconf
  }.each do |package_name|
    package package_name do
      action :install
    end
  end
end

script "install-tsunami-udp" do
  interpreter "bash"
  user "root"
  cwd "node['tsunami']['_SOURCE_DOWNLOAD_DIR']"
  code <<-EOH
    tar xzpf tsunami-v1.1-cvsbuild42.tar.gz
    cd tsunami-udp-v11-b42
    make
    make install
  EOH
end
