class newrelic::php5::config {

  Class['newrelic::php5'] -> Class['newrelic::php5::config']

  file { 'newrelic_daemon_config':
    ensure  => $newrelic::php5::ensure,
    path    => '/etc/newrelic/newrelic.cfg',
    content => template('newrelic/etc/newrelic/newrelic.cfg.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
  }

}
