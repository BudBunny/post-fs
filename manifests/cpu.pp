# This class checks num of CPUi/vCPU allocated
class sanity::cpu (
  $expected_number_cpus = undef,
) {
  notice("sanity::cpu")
  if $expected_number_cpus and $expected_number_cpus != $::processorcount {
    err("CPU count! Found ${::processorcount} expected ${expected_number_cpus}")
  }
}
