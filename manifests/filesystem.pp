# This class checks for existance of filesystem(s) and optionally, their size

define sanity::filesystem (
  $expected_filesystem_size_bytes = 0,
) {

  # TODO: add a validate for size here

  if $expected_filesystem_size_bytes > 0 and $expected_filesystem_size_bytes != $::facts[$name] {
    err("Filesystem! Found ${::facts[$name]} expected ${expected_filesystem_size_bytes}")
  }

  notify {"Inside sanity filesystem ${expected_filesystem_size_bytes}":
        withpath => true,
  }

}
