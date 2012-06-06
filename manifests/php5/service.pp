class newrelic::php5::service {

  Class['newrelic::php5::config'] ~> Class['newrelic::php5::service']

  case $newrelic::php5::ensure {
    'present': {
      $service_ensure = 'running'
    }
    'absent': {
      $service_ensure = 'false'
    }
    default: {
      fail("Invalid ensure parameter: ${newrelic::php5::ensure}")
    }
  }

  service { "newrelic-daemon":
    ensure  => $service_ensure,
    enable  => true,
    hasstatus => true,
    hasrestart => true,
  }

}
