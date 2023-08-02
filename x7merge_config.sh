#!/bin/bash

# from
# https://wiki.gentoo.org/wiki/User:Egberts/Drafts/Gentoo_Kernel_Configuration_Guide

## Not really counting on this .sh that much..
# just to remember how it's done, the next time I'll need it

KERNELDIR=/usr/src/linux
CURR_DIR=$PWD

cd $KERNELDIR
## merge the specified .config
./scripts/kconfig/merge_config.sh -n .config "$CURR_DIR/$1"

#### Just to keep in mind..
## sets version/localversion
# ./scripts/config --set-val CONFIG_CC_VERSION_TEXT ""
# ./scripts/config --set-val CONFIG_LOCALVERSION ""
