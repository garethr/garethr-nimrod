class nimrod::install {
  package { 'nimrod':
    ensure  => 'latest',
    require => Class['garethr'],
  }
}
