#!/bin/bash
#########################################################################
# James Hipp
# System Support Engineer
# Ready Computing
#
# Wrapper Script for Hippy-Mon to Send Email with Cron
#
# Sample Cron Setup:
# [jhipp@test-server]$ crontab -l
# # James Test (Run this Hourly)
# 30 * * * * /path/to/hippie_mon_wrapper.sh > /dev/null 2>&1
#
#
#########################################################################

/path/to/hippie_mon_dssh.sh /path/to/hosts.list '/path/to/hippie_mon.sh --rhel' |/usr/sbin/sendmail james.hipp@email.org

