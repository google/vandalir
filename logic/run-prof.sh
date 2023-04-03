#!/bin/sh

suff=$(date '+%m-%d_%H-%M-%S')
time souffle \
  -F ../../output-rom/facts/ \
  -D ../../output-rom/out/ \
  -I core/ -I. -I vulnerabilities/ main.dl \
  -p ../../reports/profile_${suff}.log $@
souffleprof -j../../reports/report_${suff}.html ../../reports/profile_${suff}.log

