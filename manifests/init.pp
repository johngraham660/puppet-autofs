# ============================================================
# A class to manage the automounter services on a Linux client
# ============================================================
# @param autofs_enable [Boolean]
# @param autofs_
# @param autofs_
# @param autofs_
# @param autofs_
# @param autofs_
# @param autofs_

class autofs (

  $autofs_service_enable  = $::autofs::params::autofs_service_enable,
  $autofs_service_ensure  = $::autofs::params::autofs_service_ensure,
  $autofs_config_test     = $::autofs::params::autofs_config_test,

) inherits autofs::params {

  include autofs::install
  include autofs::config
  include autofs::service

  validate_re($autofs_service_ensure, [ '^running$', '^stopped$' ])
  validate_re($autofs_config_test, [ '^hello$' ])
}
