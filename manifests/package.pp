class newrelic::package inherits repo {

    package { "newrelic-sysmond":
        ensure  => $newrelic::ensure,
    }
}
