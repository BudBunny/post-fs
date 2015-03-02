# This class checks for existance of filesystem(s) and optionally, their size

define sanity::filesystem (
  $size = 0,
) {

  # TODO: add a validate for size here

  if $size > 0 and $size != $::facts[$name] {
    err("Filesystem! Found ${::facts[$name]} expected ${size}")
  }
}
