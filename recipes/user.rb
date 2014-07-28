data_ids = data_bag("#{node['user']['data_bags']}")

data_ids.each do |id|
  u = data_bag_item("#{node['user']['data_bags']}", id)

  user u['id'] do
    supports :manage_home => true, :non_unique => false
    action [:create]
  end

  directory "/home/#{u['username']}/.ssh" do
    owner u['username']
    group u['username']
    mode 0700
    action :create
    recursive true
  end

  file "/home/#{u['username']}/.ssh/authorized_keys" do
    owner u['username']
    mode  0600
    content u['ssh-rsa']
    action :create_if_missing
  end

  group "wheel" do
    action :manage
    members u['username']
    append true
  end

  template "/etc/sudoers.d/#{u['username']}" do
    source "sudoers.erb"
    owner "root"
    group "root"
    mode 0440
    variables ({
      :username => "#{u['username']}"
    })
  end

end
