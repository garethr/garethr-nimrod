class nimrod(
  $log_files = {
    'default' => '/var/log/nimrod.log',
  },
) {
  class{'nimrod::install': } ->
  class{'nimrod::config': } ~>
  class{'nimrod::service': } ->
  Class['nimrod']
}
