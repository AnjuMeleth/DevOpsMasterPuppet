exec { 'apt-update':                    # exec resource named 'apt-update'
  command => '/usr/bin/apt-get update'  # command this resource will run
}

# install tree package
package { 'tree':
  require => Exec['apt-update'],       # require 'apt-update' before installing
  ensure => installed,
}

