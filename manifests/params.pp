class newrelic::params {

  $loglevel       = 'info'
  $logfile        = '/var/log/newrelic/nrsysmond.log'
  $proxy          = '#proxy='
  $ssl            = '#ssl=false'
  $ssl_ca_bundle  = '#ssl_ca_bundle=/path/to/your/bundle.crt'
  $ssl_ca_path    = '#ssl_ca_path=/etc/ssl/certs'
  $pidfile        = '#pidfile=/var/run/newrelic/nrsysmond.pid'
  $collector_host = '#collector_host=collector.newrelic.com'
  $timeout        = '#timeout=30'

  # Fail if the OS is not Ubuntu/Debian
  case $::operatingsystem {
    ubuntu, debian: {
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }

}
