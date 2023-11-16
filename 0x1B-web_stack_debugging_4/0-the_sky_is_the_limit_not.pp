# Define the path to the nginx configuration file
$file_path = '/etc/default/nginx'

# Define the desired ULIMIT value
$new_ulimit = 'ULIMIT="-n 2000"'

exec { 'replace_ulimit':
  command => "sed -i '/^ULIMIT=/c\\${new_ulimit}' ${file_path}",
  path    => '/bin:/usr/bin',
}

# Run the command to restart Nginx
exec { 'nginx-restart':
  command     => '/usr/sbin/service nginx restart',
}
