# Class icinga2::nrpe::install::packages
#
class icinga2::nrpe::install::packages {
  package { 'nrpe':
    ensure          => installed,
    provider        => $::icinga2::package_provider,
    install_options => $::icinga2::client_plugin_package_install_options,
    name            => $::icinga2::icinga2_client_packages,
  }
}

