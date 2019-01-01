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

  class{'autofs::install': }
  -> class{'autofs::config': }
  ~> class{'autofs::service': }
  -> Class['autofs']

  # TODO: Check how to validate class parameter inputs.
  # ===================================================
  #validate_re($autofs_service_ensure, [ '^running$', '^stopped$' ])
  #validate_re($autofs_config_test, [ '^hello$' ])
}
