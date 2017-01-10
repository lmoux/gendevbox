#!/bin/bash
version=3.7.1
target="$version-Linux-x86_64"

if [ ! -f /usr/bin/cmake ]; then
  echo "Will try to install cmake"

  if [ ! -d /opt/cmake-$target ]; then
    echo "Will extract file"
    chmod +x ./cmake-$version
    yes | \
      ./cmake-$version --prefix=/opt --include-subdir
  fi

  if [ -f /opt/cmake-$target/bin/cmake ]; then
    echo "Will now create symlinks"
    for i in cmake cpack cmake-gui ccmake ctest; do
      sudo ln -f -s /opt/cmake-$target/bin/$i /usr/bin/.
    done;
  else
    echo "Didn't symlinks!"
  fi

fi
