# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include autofs::install
class autofs::install {

  package { 'autofs':
    ensure => 'present',
  }
}
