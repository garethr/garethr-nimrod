class nimrod::config {
  file { '/etc/init/nimrod.conf':
    ensure => present,
    source => 'puppet:///modules/nimrod/etc/init/nimrod.conf',
  }
}
