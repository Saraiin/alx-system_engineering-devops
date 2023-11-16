# Puppet script to increase ulimit for the 'holberton' user

# Define the ulimit values
$soft_limit = 'holberton soft nofile 65536'
$hard_limit = 'holberton hard nofile 65536'

# File path to change
$file_path = '/etc/security/limits.conf'

exec { 'change_ulimit_soft':
  command => "sed -i '/^holberton soft/c\\${soft_limit}' ${file_path}",
  path    => '/bin:/usr/bin'
}
exec { 'change_ulimit_hard':
  command => "sed -i '/^holberton hard/c\\${hard_limit}' ${file_path}",
  path    => '/bin:/usr/bin'
}
