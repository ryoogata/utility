sysctl_param 'net.core.somaxconn' do
  value node['sysctl']['net']['core']['somaxconn']
end

sysctl_param 'net.core.netdev_max_backlog' do
  value node['sysctl']['net']['core']['netdev_max_backlog']
end

sysctl_param 'net.ipv4.tcp_max_syn_backlog' do
  value node['sysctl']['net']['ipv4']['tcp_max_syn_backlog']
end

sysctl_param 'net.ipv4.tcp_tw_recycle' do
  value node['sysctl']['net']['ipv4']['tcp_tw_recycle']
end

sysctl_param 'net.ipv4.tcp_tw_reuse' do
  value node['sysctl']['net']['ipv4']['tcp_tw_reuse']
end

sysctl_param 'net.ipv4.ip_local_port_range' do
  value node['sysctl']['net']['ipv4']['ip_local_port_range']
end

sysctl_param 'net.ipv4.tcp_fin_timeout' do
  value node['sysctl']['net']['ipv4']['tcp_fin_timeout']
end
