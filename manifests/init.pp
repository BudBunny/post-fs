# == Class: sanity
#
# Full description of class sanity here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'sanity':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Paul Talbot
#
# === Copyright
#
# Copyright 2015 FFI. All rights reserved.
#
class sanity {

  include ::sanity::cpu
  include ::sanity::file_contents
  include ::sanity::filesystems
  include ::sanity::fqdn
  include ::sanity::nfs
  include ::sanity::ram
  include ::sanity::ssh

  case $::osfamily {
    'windows','Solaris','Darwin': {
      fail("Unsupported osfamily: ${::osfamily}")
    }
    default: { }
  }

}
