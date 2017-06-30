#!/bin/bash
set -xe
DIR=$(dirname $0)
DIR=$(readlink -f ${DIR})

BUILD_FOLDER=$(${DIR}/../common/prepare.sh ${DIR} ${DIR}/debian vpp-monitoring-agent.conf /etc/init/)
${DIR}/../common/debuild.sh ${BUILD_FOLDER}