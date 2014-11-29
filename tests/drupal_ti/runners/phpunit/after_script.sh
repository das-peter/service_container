#!/bin/bash
# @file
# PHP Unit integration - After Script step.

set -e $DRUPAL_TI_DEBUG

if [ -n "$DRUPAL_TI_COVERAGE" ]
then
	pwd
	coveralls -v -c ./coveralls.yml
fi
