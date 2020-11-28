#!/bin/bash

set -e

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "\n $ANSI_YELLOW *** FUNCTIONAL TEST(S) *** $ANSI_RESET \n"

echo -e "$ANSI_YELLOW Tests for wildfly functionality: $ANSI_RESET"
docker run --rm -d -name wildfly quay.io/ibmz/wildfly:20.0.1
docker stop wildfly

docker run --rm -d -name wildfly -p 8080:8080 -p 9990:9990 quay.io/ibmz/wildfly:20.0.1 /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
docker stop wildfly

docker run --rm -d -name wildfly quay.io/ibmz/wildfly:20.0.1 /opt/jboss/wildfly/bin/domain.sh -b 0.0.0.0 -bmanagement 0.0.0.0
docker stop wildfly


echo -e "\n $ANSI_GREEN *** FUNCTIONAL TEST(S) COMPLETED SUCESSFULLY *** $ANSI_RESET \n"
