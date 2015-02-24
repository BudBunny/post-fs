# This class checks allocated RAM
class sanity::ram (
  $expected_installed_memory = undef,
) {
  if $expected_installed_memory_mb and $expected_installed_memory_mb != $::memorysize_mb {
    err("RAM size! Found ${::memorysize_mb} expected ${expected_installed_memory_mb}")
  }
}
