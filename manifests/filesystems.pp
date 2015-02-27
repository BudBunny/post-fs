# This class checks for existance of filesystem(s) and optionally, their size
class sanity::filesystems {
  # filesystems
  file { '/etc/facter/facts.d/filesystem_sizes.bash':
    ensure => file,
    source => 'puppet:///modules/sanity/filesystem_sizes.bash',
  }
}
