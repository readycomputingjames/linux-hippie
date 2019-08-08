#!/bin/bash
#########################################################################
# James Hipp
# System Support Engineer
# Ready Computing
#
# Hippie Monitor Script for Linux
#
# Currently Functionality Supports RHEL/CentOS 7+ and Ubuntu
#
# This can be run for ad-hoc reporting on a system(s), but my
# use will be with a wrapper script to send emails with cron in
# order to see historical data over time (such as hourly).
#
# Usage = hippie_mon.sh <command>
#
# Ex: ./hippie_mon.sh --help
# Ex: ./hippie_mon.sh --rhel
# Ex: ./hippie_mon.sh --ubuntu
#
# (See Help Function for Full Usage Notes)
#
#
### CHANGE LOG ###
#
#
#########################################################################

VERSION="1.00"

INPUT_COMMAND1=$1

help_text()
{

   # Print Help Text
   echo "----------------------"
   echo "hippie_mon.sh"
   echo "----------------------"
   echo ""
   echo "Usage:"
   echo "hippie_mon.sh <command>"
   echo ""
   echo "Commands:"
   echo "--help = Show help notes for this script"
   echo "--rhel = Run script for RHEL/CentOS 7+ platforms
   echo "--ubuntu = Run script for Ubuntu platforms
   echo "--version = Print out script version"
   echo ""
   echo "Examples:"
   echo "./hippie_mon.sh --rhel"
   echo "./hippie_mon.sh --ubuntu
   echo ""

}

rhel_mon()
{

   # Primary RHEL/CentOS Monitor Function
   
   echo "placeholder"

}

ubuntu_mon()
{

   # Primary Ubuntu Monitor Function
   
   echo "placeholder"

}

rhel_main()
{

   # Main Function for Ubuntu Flag
   
   echo "placeholder"
   
}

ubuntu_main()
{

   # Main Function for Ubuntu Flag
   
   echo "placeholder"
   
   
}

main ()
{

   # Main Function for Overall Script

   # Parse out CLI Argument to see what we Need to do
   case $INPUT_COMMAND1 in
      --help)
         help_text
      ;;
      --rhel)
        rhel_main
      ;;
      --ubuntu)
        ubuntu_main
      ;;
      --version)
         echo ""
         echo "Script Version = $VERSION"
         echo ""
      ;;
      *)
         echo ""
         echo "$INPUT_COMMAND1 = Not Valid Input"
         echo ""
         help_text
   esac

}

main

