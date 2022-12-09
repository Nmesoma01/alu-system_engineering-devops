# declare nginx service and ensure it runs
service { 'nginx':
  ensure => running,
}
#web server setup featuring Nginx
exec { 'change ULIMIT':
  command  => 'sed -i "s/ULIMIT=\"-n 100\"/ULIMIT=\"-n 100\"/g" /etc/default/nginx',
  provider => 'shell',
  notify   => Service['nginx']
}
