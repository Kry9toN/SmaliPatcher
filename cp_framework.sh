#!/bin/bash
rm -rf adb
mkdir adb

copyDir() {
  if [[ -e "$1" && -r "$1" ]]
  then
    cp --no-preserve=all -R "$1" adb/
  fi
}

copyDir ../komodo/system/build.prop
copyDir ../komodo/system/framework
copyDir ../komodo/system/system/build.prop
copyDir ../komodo/system/system/framework
