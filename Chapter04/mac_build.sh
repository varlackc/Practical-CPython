#! /bin/bash

# setup the gdb environmental variables for Python 3.10, 3.11 and 3.12
GDBM_CFLAGS="-I$(brew --prefix gdbm)/include" \
GDBM_LIBS="-L$(brew --prefix gdbm)/lib -lgdbm"
# display the content of the environmental variables
eval echo $GDBM_CFLAGS
eval echo $GDBM_LIBS
# call the configure script with the pydebug option
echo "======== Configuration Section ========" | tee build.log
../configure --with-pydebug \
	--with-openssl="$(brew --prefix openssl@3.0)" 2>&1 | tee -a build.log

# compile the executable using the number of processors as an argument
echo "======== Compilation Section ========" | tee -a build.log
make --jobs `sysctl -n hw.ncpu` 2>&1 | tee -a build.log
