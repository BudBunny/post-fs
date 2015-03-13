# This class checks for existance of filesystem(s) and optionally, their size

define sanity::filesystem (
  $expected_filesystem_size_bytes = 0,
) {

  # TODO: add a validate for size here

  # The mount size reurned from the node
  #$_mount_size = $::facts["sanity_filesystem_${name}"]

  # Check for empty mount point
  if !$_mount_size {
    err("The mount point ${name} is missing")
  }
  elsif $expected_filesystem_size_bytes > 0 and $expected_filesystem_size_bytes != $_mount_size {
    err("Filesystem! Found ${_mount_size} expected ${expected_filesystem_size_bytes}")
  }
}
