set "LIBCLANG_PATH"=%LIBRARY_BIN%

%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
if errorlevel 1 exit 1
