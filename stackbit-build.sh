#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://vitaliy-stackbit.ngrok.io/pull/6051ea14879e1806f09153ee

# build site
npm run build

echo "stackbit-build.sh: finished build"
