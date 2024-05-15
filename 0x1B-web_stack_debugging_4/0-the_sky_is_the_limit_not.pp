# Increase the ULIMIT of the default file
exec { 'fix_for_nginx_ulimit':
  command => 'sudo sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/',
  refreshonly => true,
}

# Restart Nginx when the ULIMIT is updated
service { 'nginx':
  ensure     => running,
  enable     => true,
  subscribe  => Exec['fix_for_nginx_ulimit'],
}


