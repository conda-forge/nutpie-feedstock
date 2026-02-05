#!/bin/bash

set -ex

export LIBCLANG_PATH=$BUILD_PREFIX/lib

"${PYTHON}" -m pip install . -vv

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
