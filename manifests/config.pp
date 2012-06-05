class newrelic::config {

  Class['newrelic'] -> Class['newrelic::config'] ~> Class['newrelic::service']

  if $newrelic::ensure == 'present' {
    $dir_ensure = 'directory'
  }
  else {
    $dir_ensure = $newrelic::ensure
  }

  File['newrelic_etc_dir'] -> File['newrelic_config']

  file { 'newrelic_etc_dir':
    ensure  => $dir_ensure,
    path    => '/etc/newrelic',
    recurse => 'true',
    force   => 'true',
  }

  file { 'newrelic_config':
    ensure  => $newrelic::ensure,
    path    => '/etc/newrelic/nrsysmond.cfg',
    content => template('newrelic/etc/newrelic/nrsysmond.cfg.erb'),
    owner   => 'root',
    group   => 'newrelic',
    mode    => '0640',
  }
  
}
