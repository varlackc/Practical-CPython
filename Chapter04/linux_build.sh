#! /bin/bash

# call the configure script with the pydebug option
echo "======== Configuration Section ========" | tee build.log
../configure --with-pydebug 2>&1 | tee -a build.log

# compile the executable using the number of processors as an argument
echo "======== Compilation Section ========" | tee -a build.log
make --jobs `nproc` | 2>&1 tee -a build.log
