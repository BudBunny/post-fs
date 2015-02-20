# sanity

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What sanity does and why it is useful](#module-description)
3. [Setup - The basics of getting started with sanity](#setup)
    * [What sanity affects](#what-sanity-affects)
    * [Beginning with sanity](#beginning-with-sanity)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Post-build sanity checker that will read desired host/OS attributes from hiera and throw an error if "as-built" does not match. Currently, sanity works with RHEL but future Windows functionality is cooking.

## Module Description

This module checks configuration using "core facts" and ... to verify configuration of a host based on expected configuration details in hiera. If desired and as-built details do not match an error is thrown. Otherwise, puppet run continues.

## Setup

### What sanity affects

* Verify SSH or RDP via FQDN, e.g. <hostname>.wrk.fs.usda.gov
* Check for required packages
* Check for foridden packages
* Verify NFS mount(s) and permissions
* Verify CPU core(s), installed memory, filesystems and allocation
* Check symlinks

### Beginning with sanity

To work with sanity, you may use puppet module install ffi-sanity or incorporate into your R10K environments.

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff here.

## Reference

Here, list the classes, types, providers, facts, etc contained in the module.
This section should include all of the under-the-hood workings so people know what the module is touching on their system but don't need to mess with things.

## Limitations

RHEL-only as of v0.1.0

## Development

Submit PRs as appropriate.

## Contributors

Paul Talbot (FFI)
Bryan Belanger (Azcender)
