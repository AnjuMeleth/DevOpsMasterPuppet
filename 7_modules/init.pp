class nginx{
exec { 'apt-update':                    # exec resource named 'apt-update'
  command => '/usr/bin/apt-get update'  # command this resource will run
}

# install tree package
package { 'nginx':
  require => Exec['apt-update'],       # require 'apt-update' before installing
  ensure => installed,
}
service { 'nginx':
  require => Exec['apt-update'],       # require 'apt-update' before installing
  ensure => running,
  enable => true,	
}
}
