#!/bin/bash

/bin/df -k | awk '{ print "sanity_filesystem_" $6 "=" $2 }' | grep -v Mounted

