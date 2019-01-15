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

  Boolean $autofs_service_enable,
  Enum['running', 'stopped'] $autofs_service_ensure,
  Enum['yes', 'no'] $autofs_config_usetls,
  Enum['yes', 'no'] $autofs_config_tlsrequired,
  Enum['yes', 'no', 'autodetect', 'simple'] $autofs_config_authrequired,
  Enum['GSSAPI', 'LOGIN', 'PLAIN', 'ANONYMOUS', 'DIGEST-MD5', 'EXTERNEL'] $autofs_config_authtype,
  String[1] $autofs_config_user,
  String[1] $autofs_config_secret,
  Integer $autofs_config_timeout,
  String[1] $autofs_config_browse_mode,
  String[1] $autofs_config_logging,
  String[1] $autofs_config_map_object_class,
  String[1] $autofs_config_entry_object_class,
  String[1] $autofs_config_map_attribute,
  String[1] $autofs_config_entry_attribute,
  String[1] $autofs_config_value_attribute,
  String[1] $autofs_config_auth_conf_file,
  Enum['yes', 'no'] $autofs_config_use_misc_device,

) inherits autofs::params {

  include autofs::install
  include autofs::config
  include autofs::service

}
