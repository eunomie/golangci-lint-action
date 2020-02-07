#!/bin/sh

set -e

VERBOSE_OPT=""
[ ! -z "${INPUT_VERBOSE}" ] && VERBOSE_OPT="-v"

CONFIG_OPT=""
[ ! -z "${INPUT_CONFIG}" ] && CONFIG_OPT="--config ${INPUT_CONFIG}"

ACTION="run"
[ ! -z "${INPUT_ACTION}" ] && ACTION=${INPUT_ACTION}

sh -c "golangci-lint ${VERBOSE_OPT} ${ACTION} ${CONFIG_OPT}"
