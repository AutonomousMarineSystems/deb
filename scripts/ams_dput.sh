#!/bin/bash

pushd /home/ubuntu/deb/sbuild/build >& /dev/null
for i in *.changes; do
    j=$(echo $i | sed s/.changes//);
    if [ ! -e $j.local.upload ]; then 
        echo "dput $i"
        dput local $i
    fi;
done
popd >& /dev/null

mini-dinstall -b
