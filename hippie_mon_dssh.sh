#!/bin/bash

HOST_FILE=$1
INPUT_COMMAND=$2

HOSTNAME=`hostname`
TIMESTAMP=`date`

SUBJECT="Subject: Hippie-Mon Script Results Executed from $HOSTNAME for $INPUT_COMMAND"


hippie_mon_dssh ()
{

   echo $SUBJECT
   echo ""
   echo "Timestampe = $TIMESTAMP"

   for HOST in `cat $HOST_FILE`
   do
      echo $HOST
      /bin/ssh -t -o ConnectTimeout=5 $HOST $INPUT_COMMAND
      echo "____________________________________"
      echo ""
   done

}

hippie_mon_dssh

