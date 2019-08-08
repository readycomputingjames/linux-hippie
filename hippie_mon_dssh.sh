#!/bin/bash

HOST_FILE=$1
INPUT_COMMAND=$2

HOSTNAME=`hostname`
TIMESTAMP=`date`

SUBJECT="Subject: Hippie-Mon Script Results Executed from $HOSTNAME for $HOST_FILE"

hippie_mon_dssh ()
{

   echo $SUBJECT
   echo ""
   echo "Timestamp = $TIMESTAMP"
   echo ""

   for HOST in `cat $HOST_FILE`
   do
      echo $HOST
      /bin/ssh -t -o ConnectTimeout=5 $HOST $INPUT_COMMAND
      echo "####################################"
      echo ""
   done

}

hippie_mon_dssh

