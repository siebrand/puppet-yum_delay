# == Class: yum_delay: See README.md for documentation
class yum_delay (
  # Enabled (present/absent)
  Enum['present', 'absent'] $enabled = 'present',
  # Delay in hours
  Integer $delay                     = 24,
) {
  file { '/etc/yum/pluginconf.d/delay.conf':
    ensure  => $enabled,
    content => template('yum_delay/delay.conf.erb'),
  }

  file { '/usr/lib/yum-plugins/delay.py':
    ensure => $enabled,
    source => 'puppet:///modules/yum_delay/yum-plugin-delay/delay.py',
  }
}
