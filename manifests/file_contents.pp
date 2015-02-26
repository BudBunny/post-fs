# This class checks contents of file(s) for string(s)
class sanity::file_contents {
  # file contents
  #cat /etc/opt/quest/vas/users.allow
  file { '/etc/opt/quest/vas/users.allow':
    ensure => file# Whether the file should exist, and if so what...
  }
}
