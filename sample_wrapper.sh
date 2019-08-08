#!/bin/bash
#########################################################################
# James Hipp
# System Support Engineer
# Ready Computing
#
# Wrapper Script for Hippy-Mon to Send Email with Cron
#
# Main Command: /path/to/hippie_mon.sh --rhel |sendmail <email_address>
#
# Sample Cron Setup:
# [jhipp@test-box]$ crontab -l
# # James Test (Run this Hourly) = /path/to/hippie_mon.sh --rhel |sendmail <email_address>
# 30 * * * * /path/to/sample_wrapper.sh --rhel
#
#
#########################################################################

/path/to/hippie_mon.sh --rhel |/usr/sbin/sendmail james.hipp@email.org

