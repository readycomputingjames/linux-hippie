#!/bin/bash

host_list_file=$1
input_command=$2

HOSTNAME=`hostname`
TIMESTAMP=`date`

SUBJECT="Subject: Hippie-Mon Script Results for $HOSTNAME for $TIMESTAMP"

hippie_mon_dssh ()
{

   echo $SUBJECT
   echo ""

   for HOST in `cat $host_list_file`
   do
      echo $HOST
      /bin/ssh -t -o ConnectTimeout=5 $HOST $input_command
      echo "____________________________________"
      echo ""
   done

}

hippie_mon_dssh

