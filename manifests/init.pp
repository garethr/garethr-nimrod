class nimrod(
  $port = $nimrod::params::port,
  $log_files = {
    'default' => '/var/log/nimrod.log',
  },
) inherits nimrod::params {
  class{'nimrod::install': } ->
  class{'nimrod::config': } ~>
  class{'nimrod::service': } ->
  Class['nimrod']
}
