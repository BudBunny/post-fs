#!/bin/bash

/bin/df -k | awk '{ print $6 "=" $2 }' | grep -v Mounted

