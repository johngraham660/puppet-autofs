# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include autofs::config
class autofs::config inherits autofs {

  file { '/etc/sysconfig':
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { '/etc/auto_home':
    ensure => 'absent',
  }

  file { '/etc/auto_share':
    ensure => 'absent',
  }

  file { '/etc/auto.home':
    ensure => 'absent',
  }

  file { '/etc/auto.share':
    ensure => 'absent',
  }

  file { '/etc/autofs_ldap_auth.conf':
    ensure  => 'file',
    path    => '/etc/autofs_ldap_auth.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => template('autofs/autofs_ldap_auth_conf.erb'),
    notify  => Service['autofs'],
    require => Package['autofs'],
  }

  file { '/etc/sysconfig/autofs':
    ensure  => 'file',
    path    => '/etc/sysconfig/autofs',
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => template('autofs/sysconfig_autofs.erb'),
    notify  => Service['autofs'],
    require => [ File['/etc/sysconfig'], Package['autofs'] ],
  }

  file { '/etc/auto.master':
    ensure  => 'file',
    path    => '/etc/auto.master',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/autofs/auto.master',
    notify  => Service['autofs'],
    require => Package['autofs'],
  }
}
