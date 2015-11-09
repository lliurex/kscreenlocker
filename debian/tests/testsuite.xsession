#!/bin/sh
export LANG=C.UTF-8
export LC_ALL=C.UTF-8
[ -e debian/tests.home ] || mkdir debian/tests.home
export HOME="$(pwd)/debian/tests.home"
export XDG_CACHE_HOME="$(pwd)/debian/tests.home"
openbox &
sleep 5
kbuildsycoca5
dh_auto_test
ret=$?
rm -rf debian/tests.home
exit $ret
