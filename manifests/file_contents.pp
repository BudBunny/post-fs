# This class checks contents of file(s) for string(s)
class sanity::file_contents {
  # file contents
  #
  # some examples for /etc/opt/quest/vas/users.allow:
  #
  # EDC\P_CIOX_PRD_AppAdmin_FS_Role
  # EDC\P_OPSX_PRD_AppAdmin_FS_Role
  # EDC\S_ADDM_UNIX_PRD_Service_NITC_Roles
  # EDC\S_SCAN_PRD_ServiceAccount_FS_Role
  # P_Linux_OSAdmin_NITC_Roles
  # P_Linux_SNCCAdmin_NITC_Role
  # S_EDC_EnterpriseService_NITC_Roles
  # S_Hobbit_PRD_Service_NITC_ROLE

  file { '/etc/opt/quest/vas/users.allow':
    ensure => file,
  }
  augeas { '/etc/opt/quest/vas/users.allow':
    context => '/etc/opt/quest/vas/users.allow',
    changes => [
      'set EDC\P_CIOX_PRD_AppAdmin_FS_Role',
      'set EDC\P_OPSX_PRD_AppAdmin_FS_Role',
    ],
    notify  => Service['vas'],
  }
}
