class newrelic::service{

    Class['newrelic::config'] ~> Class['newrelic::service']

    if $newrelic::ensure == 'present' {
      $service_ensure = 'running'
    }
    else {
      $service_ensure = 'stopped'
    }

    service { "newrelic-sysmond":
        ensure  => $service_ensure,
        enable  => true,
        hasstatus => true,
        hasrestart => true,
        require => Class["newrelic::package"];
    }

}
