#! /bin/bash
# Francois BAYART - 2022 Copyright

set -e

export version_validated=0
if [[ "${INPUT_VERSION_FORMAT}" == "v1" ]]; then
  echo -n ${INPUT_VERSION_NUMBER} | egrep  '^([0-9]{1,}.[0-9]{1,}.[0-9]{1,})$'
  version_validated=$?
elif [[ "${INPUT_VERSION_FORMAT}" == "v2" ]]; then
  echo -n ${INPUT_VERSION_NUMBER} | egrep  '^([0-9]{1,}.[0-9]{1,}.[0-9]{1,}.[0-9]{1,})$'
  version_validated=$?
fi

echo "::set-output name=version_validated::$version_validated"
