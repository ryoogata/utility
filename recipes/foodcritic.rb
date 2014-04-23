case node['platform']
when "centos"
  %w{
    rubygems ruby ruby-devel libxml2-devel libxslt-devel chef
  }.each do |package_name|
    package package_name do
      action :install
    end
  end
when "ubuntu"
  %w{
    rubygems ruby ruby-dev libxml2-dev libxslt1-dev
  }.each do |package_name|
    package package_name do
      action :install
    end
  end
end

gem_package "foodcritic" do
  action :install
  options("--no-ri --no-rdoc")
end
