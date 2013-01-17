class nimrod {
  class{'nimrod::install': } ->
  class{'nimrod::config': } ~>
  class{'nimrod::service': } ->
  Class['nimrod']
}
