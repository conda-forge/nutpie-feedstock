#!/bin/bash

set -ex

maturin build --release --bindings pyo3 --manylinux off --interpreter="${PYTHON}"

"${PYTHON}" -m pip install $SRC_DIR/target/wheels/nutpie*.whl --no-index --no-deps -vv

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
