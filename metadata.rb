name             'utility'
maintainer       'Ryo Ogata'
maintainer_email 'ryo.ogata@gmail.com'
license          'All rights reserved'
description      'Installs/Configures utility'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
depends          'sysctl'


# == Recipes
#

recipe "utility::bash_conf", "Put bash_conf"
recipe "utility::bind-utils", "Install bind-utils"
recipe "utility::dos2unix", "Install dos2unix"
recipe "utility::git", "Install git"
recipe "utility::git_rpm", "Install git via RPM files"
recipe "utility::jq", "Install jq"
recipe "utility::jsonpp", "Install jsonapp"
recipe "utility::lv", "Install lv"
recipe "utility::yajl", "Install yajl"
recipe "utility::berkshelf", "Install berkshelf"
recipe "utility::buildenv", "Install buildenv"
recipe "utility::cvskit", "Install cvskit"
recipe "utility::foodcritic", "Install foodcritic"
recipe "utility::kitchen-docker", "Install kitchen-docker"
recipe "utility::scl", "Install scl"
recipe "utility::sysctl", "setup sysctl "
recipe "utility::tsunami", "Install tsunami udp"

# == Attributes
# 

attribute "utility",
    :display_name => "utility",
    :type => "hash"

attribute "git/user/name",
  :display_name => "",
  :description => "",
  :required => "optional",
  :recipes => [
    "utility::git"
  ]

attribute "git/user/email",
  :display_name => "",
  :description => "",
  :required => "optional",
  :recipes => [
    "utility::git"
  ]

attribute "cvskit/_SOURCE_DOWNLOAD_DIR",
  :display_name => "",
  :description => "",
  :default => "/tmp",
  :required => "recommended",
  :recipes => [
    "utility::cvskit"
  ]

attribute "yajl/_SOURCE_DOWNLOAD_DIR",
  :display_name => "",
  :description => "",
  :default => "/tmp",
  :required => "recommended",
  :recipes => [
    "utility::yajl"
  ]

attribute "tsunami/_SOURCE_DOWNLOAD_DIR",
  :display_name => "",
  :description => "",
  :default => "/tmp",
  :required => "recommended",
  :recipes => [
    "utility::tsunami"
  ]

attribute "berkshelf/version",
  :display_name => "",
  :description => "",
  :default => "2.0.15",
  :required => "recommended",
  :recipes => [
    "utility::berkshelf"
  ]
