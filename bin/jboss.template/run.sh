#!/bin/sh
JAVA_OPTS="$JAVA_OPTS -Dorg.jboss.logging.Log4jService.catchSystemOut=false -Xmx450M"
. run2.sh $*
