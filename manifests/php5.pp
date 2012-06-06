class newrelic::php5 (
  $ensure                = 'present',
  $daemon_license_key    = $newrelic::license_key,
  $daemon_pidfile        = $newrelic::params::daemon_pidfile,
  $daemon_logfile        = $newrelic::params::daemon_logfile,
  $daemon_loglevel       = $newrelic::params::daemon_loglevel,
  $daemon_collector_host = undef,
  $daemon_ssl            = undef,
  $daemon_timeout        = undef,
  $daemon_socket         = undef,
  $daemon_max_threads    = undef,
  $daemon_metric_limit   = undef,
  $daemon_special        = undef,
  $daemon_proxy          = undef
) {

  Class['newrelic::repo'] -> Class['newrelic::php5'] -> Class['newrelic::php5::package'] -> Class['newrelic::php5::config'] ~> Class['newrelic::php5::service']

  include newrelic::php5::package
  include newrelic::php5::config
  include newrelic::php5::service

}
