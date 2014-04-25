default["git"]["user"]["name"] = ""
default["git"]["user"]["email"] = ""

default["cvskit"]["_SOURCE_DOWNLOAD_DIR"] = "/mnt"
default["yajl"]["_SOURCE_DOWNLOAD_DIR"] = "/mnt"
default["tsunami"]["_SOURCE_DOWNLOAD_DIR"] = "/mnt"

default["berkshelf"]["version"] = "2.0.15"

default["sysctl"]["net"]["core"]["somaxconn"] = 10240
default["sysctl"]["net"]["core"]["netdev_max_backlog"] = 10240
default["sysctl"]["net"]["ipv4"]["tcp_max_syn_backlog"] = 10240
default["sysctl"]["net"]["ipv4"]["tcp_tw_recycle"] = 1
default["sysctl"]["net"]["ipv4"]["tcp_tw_reuse"] = 1
default["sysctl"]["net"]["ipv4"]["ip_local_port_range"] = '1024 65535'
default["sysctl"]["net"]["ipv4"]["tcp_fin_timeout"] = 10
