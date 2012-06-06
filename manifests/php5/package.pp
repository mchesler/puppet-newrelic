class newrelic::php5::package {

  package { "newrelic-php5":
    ensure  => $newrelic::php5::ensure,
  }

  case $newrelic::php5::ensure {
    'present': {
      Package['newrelic-php5'] ~> Exec['newrelic_php_install_script']

      $install_script = '/usr/bin/newrelic-install install'

      exec { 'newrelic_php_install_script':
        command     => $install_script,
        refreshonly => true,
      }
    }
    default: {
    }
  }

}
