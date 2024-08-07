#!/usr/bin/env bash
STACK_NAME="Accepter-VPC"

SOURCE_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}) && pwd)
cd ${SOURCE_DIR}

aws cloudformation deploy \
    --template-file template.yml \
    --stack-name ${STACK_NAME} \
    --capabilities CAPABILITY_NAMED_IAM
