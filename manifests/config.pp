class nimrod::config {
  $log_files = $nimrod::log_files
  $port = $nimrod::port
  file { '/etc/init/nimrod.conf':
    ensure => present,
    source => 'puppet:///modules/nimrod/etc/init/nimrod.conf',
  }
  file { '/opt/nimrod/nimrod.conf':
    ensure  => present,
    content => template('nimrod/opt/nimrod/nimrod.conf.erb')
  }
}
