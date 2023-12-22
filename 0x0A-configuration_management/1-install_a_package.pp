#!/usr/bin/puppet

# Install a specific version of Flask (2.1.0)
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require  => Exec['update_pip'], # Assuming you need to update pip first
}

exec { 'update_pip':
  command => 'pip3 install --upgrade pip',
  path    => ['/usr/bin'],
}
