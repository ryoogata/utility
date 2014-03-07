sysctl_param 'net.core.somaxconn' do
  value 10240
end

sysctl_param 'net.core.netdev_max_backlog' do
  value 10240
end

sysctl_param 'net.ipv4.tcp_max_syn_backlog' do
  value 10240
end

sysctl_param 'net.ipv4.tcp_max_syn_backlog' do
  value 10240
end

sysctl_param 'net.ipv4.tcp_tw_recycle' do
  value 1
end

sysctl_param 'net.ipv4.tcp_tw_reuse' do
  value 1
end

sysctl_param 'net.ipv4.ip_local_port_range' do
  value '1024 65535'
end

sysctl_param 'net.ipv4.tcp_fin_timeout' do
  value 10
end
