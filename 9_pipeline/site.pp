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
exec {'Docker-build':
cwd => '/home/ubuntu/workspace/spring_petclinic',
command => '/usr/bin/docker build . -t anjurose/puppetapp'
}
exec {'Docker-run':
 cwd => '/home/ubuntu/workspace/spring_petclinic',
 command => '/usr/bin/docker run -it -d -p 8083:8080 anjurose/puppetapp'
}
