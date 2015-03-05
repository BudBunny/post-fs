# This class checks for existance of filesystem(s) and optionally, their size

define sanity::filesystem (
  $expected_filesystem_size_bytes = 0,
) {

  # TODO: add a validate for size here

  if $expected_filesystem_size_bytes > 0 and $expected_filesystem_size_bytes != $::facts["sanity_filesystem_${name}"] {
    err("Filesystem! Found $::facts[sanity_filesystem_${name}] expected ${expected_filesystem_size_bytes}")
  }
}
