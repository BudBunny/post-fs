# This class checks fact fqdn
class sanity::fqdn (
  $expected_fqdn = undef,
) {
  if $expected_fqdn and $expected_fqdn != $::fqdn {
    err("FQDN! Found ${::fqdn} expected ${expected_fqdn}")
  }
}
