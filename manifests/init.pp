# ============================================================
# A class to manage the automounter services on a Linux client
# ============================================================
# @param autofs_service_enable
# @param autofs_service_ensure
# @param autofs_config_test
# @param autofs_config_usetls
# @param autofs_config_tlsrequired
# @param autofs_config_authrequired
# @param autofs_config_authtype
# @param autofs_config_user
# @param autofs_config_secret
# @param autofs_config_timeout
# @param autofs_config_browse_mode
# @param autofs_config_logging
# @param autofs_config_map_object_class
# @param autofs_config_entry_object_class
# @param autofs_config_map_attribute
# @param autofs_config_entry_attribute
# @param autofs_config_value_attribute
# @param autofs_config_auth_conf_file
# @param autofs_config_use_misc_device

class autofs (

  $autofs_service_enable            = undef,
  $autofs_service_ensure            = undef,
  $autofs_config_test               = undef,
  $autofs_config_usetls             = undef,
  $autofs_config_tlsrequired        = undef,
  $autofs_config_authrequired       = undef,
  $autofs_config_authtype           = undef,
  $autofs_config_user               = undef,
  $autofs_config_secret             = undef,
  $autofs_config_timeout            = undef,
  $autofs_config_browse_mode        = undef,
  $autofs_config_logging            = undef,
  $autofs_config_map_object_class   = undef,
  $autofs_config_entry_object_class = undef,
  $autofs_config_map_attribute      = undef,
  $autofs_config_entry_attribute    = undef,
  $autofs_config_value_attribute    = undef,
  $autofs_config_auth_conf_file     = undef,
  $autofs_config_use_misc_device    = undef,

) inherits autofs::params {

  include autofs::install
  include autofs::config
  include autofs::service

}
