name             'utility'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures utility'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
depends          'sysctl'


recipe "traincost::server",
  "Setup TrainCost Management System"

recipe "utility::bash_conf",
  "Put bash_conf"

recipe "utility::bind-utils",
  "Install bind-utils"

recipe "utility::dos2unix",
  "Install dos2unix"

recipe "utility::git",
  "Install git"

recipe "utility::git_rpm",
  "Install git via RPM files"

recipe "utility::jq",
  "Install jq"

recipe "utility::jsonpp",
  "Install jsonapp"

recipe "utility::lv",
  "Install lv"

recipe "utility::vim",
  "Install vim"

recipe "utility::yajl",
  "Install yajl"
