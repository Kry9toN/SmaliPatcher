#!/bin/sh
unset LD_PRELOAD
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
~/.dotnet/dotnet smp/SmaliPatcherMin.dll --print-version
if [ "$1" != "--no-cp" ]
then
    ./cp_framework.sh
fi
~/.dotnet/dotnet smp/SmaliPatcherMin.dll --no-cd --framework:./adb $@
# mv SmaliPatcherModule* /sdcard/
