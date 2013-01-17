class nimrod::service {
  service { 'nimrod':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}

