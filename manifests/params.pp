# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include autofs::params
class autofs::params {
  $autofs_service_enable  = true
  $autofs_service_ensure  = 'running'
  $autofs_config_test     = 'hello'
}
