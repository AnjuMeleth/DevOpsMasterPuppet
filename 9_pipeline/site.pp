exec {'apt-update':
 command => '/usr/bin/apt-get update'
}
file {'/home/devops/':
 ensure => directory,
 mode => '0777'
}
package{'docker.io':
 ensure => present
}
exec {'Docker-run':
 command => '/usr/bin/docker run -it -d -p 8083:8080 anjurose/puppetapp'
}
