#!/bin/bash

set -e

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "\n $ANSI_YELLOW *** FUNCTIONAL TEST(S) *** $ANSI_RESET \n"

echo -e "$ANSI_YELLOW Tests for wildfly functionality: $ANSI_RESET"



echo -e "\n $ANSI_GREEN *** FUNCTIONAL TEST(S) COMPLETED SUCESSFULLY *** $ANSI_RESET \n"
