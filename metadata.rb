name             'utility'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures utility'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "traincost::server",
  "Setup TrainCost Management System"

recipe "utility::bash_conf.rb",
  "Put bash_conf"

recipe "utility::bind-utils.rb",
  "Install bind-utils"

recipe "utility::dos2unix.rb",
  "Install dos2unix"

recipe "utility::git.rb",
  "Install git"

recipe "utility::git_rpm.rb",
  "Install git via RPM files"

recipe "utility::jq.rb",
  "Install jq"

recipe "utility::jsonpp.rb",
  "Install jsonapp"

recipe "utility::lv.rb",
  "Install lv"

recipe "utility::vim.rb",
  "Install vim"

recipe "utility::yajl.rb",
  "Install yajl"
