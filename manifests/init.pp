class newrelic (
  $ensure         = 'present',
  $loglevel       = $newrelic::params::loglevel,
  $logfile        = $newrelic::params::logfile,
  $proxy          = undef,
  $ssl            = undef,
  $ssl_ca_bundle  = undef,
  $ssl_ca_path    = undef,
  $pidfile        = undef,
  $collector_host = undef,
  $timeout_value  = undef,
  $license_key
) inherits newrelic::params {

    Class['newrelic'] -> Class['newrelic::repo'] -> Class['newrelic::config'] -> Class['newrelic::package'] ~> Class['newrelic::service']

    include newrelic::repo
    include newrelic::package
    include newrelic::config
    include newrelic::service

}
