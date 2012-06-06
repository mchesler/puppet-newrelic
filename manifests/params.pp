class newrelic::params {

  # sysmond
  $loglevel       = 'info'
  $logfile        = '/var/log/newrelic/nrsysmond.log'
  $proxy          = '#proxy='
  $ssl            = '#ssl=false'
  $ssl_ca_bundle  = '#ssl_ca_bundle=/path/to/your/bundle.crt'
  $ssl_ca_path    = '#ssl_ca_path=/etc/ssl/certs'
  $pidfile        = '#pidfile=/var/run/newrelic/nrsysmond.pid'
  $collector_host = '#collector_host=collector.newrelic.com'
  $timeout        = '#timeout=30'

  # daemon
  $daemon_pidfile        = 'pidfile=/var/run/newrelic-daemon.pid'
  $daemon_logfile        = '/var/log/newrelic/newrelic-daemon.log'
  $daemon_loglevel       = 'info'
  $daemon_collector_host = 'collector.newrelic.com'
  $daemon_ssl            = 'false'
  $daemon_timeout        = '30'
  $daemon_socket         = '/tmp/.newrelic.sock'
  $daemon_max_threads    = '8'
  $daemon_metric_limit   = '2000'
  $daemon_special        = '0'
  $daemon_proxy          = ''

  # Fail if the OS is not Ubuntu/Debian
  case $::operatingsystem {
    ubuntu, debian: {
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }

}
