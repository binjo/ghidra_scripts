#!/bin/bash

#script to automatically import and export of a binary with ghidra

GHIDRA_PATH=$(dirname $(readlink `which ghidraRun`))
MY_SCRIPT_PATH=$(dirname "$0")
# TODO auto create project primary directory within script path?
MY_GHIDRA_PRJ=~/Documents/ghidra_prj

if [ "$#" -ne 2 ]
then
    echo "$0 <project name> <binary path>"
    exit
fi

prj_name=$1
prj_path=$2

headless_params="${MY_GHIDRA_PRJ} ${prj_name} -import"

if [ -d "${prj_path}/exe" ]
then
    headless_params="${headless_params} ${prj_path}/exe"
else
    headless_params="${headless_params} ${prj_path}"
fi

# default post handling __guard_dispatch_icall_fptr
headless_params="${headless_params} -scriptPath ${MY_SCRIPT_PATH} -postScript HeadlessPostReplaceCFGDispatchCall.java"

if [ -d "${prj_path}/pdb" ]
then
    headless_params="${headless_params} -preScript HeadlessPreSetPath.java ${prj_path}/pdb -postScript HeadlessPostBinExport.java ${prj_path}/export"
fi

${GHIDRA_PATH}/support/analyzeHeadless ${headless_params}
