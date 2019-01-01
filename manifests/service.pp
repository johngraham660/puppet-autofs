# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include autofs::service
class autofs::service {

  service {'autofs':
    ensure => 'running',
    enable => true,
  }

}
