#!/bin/bash
set -e

# Returns current directory of the calling script
function getmydir() {
	CALLING_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[1]}" )" && pwd )"
	echo $CALLING_SCRIPT_DIR
}

# Add new java alternatives (java, jar, jarsigner, javac, javadoc, javah, javap, javaws, jvisualvm, jconsole and libjavaplugin.so
# By default, java alternative with greatest priority is choosen.
# $1 java home
# $2 java priority
function addJavaAlternatives() {
	update-alternatives --install /usr/bin/java java "$1/bin/java" $2
	update-alternatives --install /usr/bin/jar jar "$1/bin/jar" $2
	update-alternatives --install /usr/bin/jarsigner jarsigner "$1/bin/jarsigner" $2
	update-alternatives --install /usr/bin/javac javac "$1/bin/javac" $2
	update-alternatives --install /usr/bin/javadoc javadoc "$1/bin/javadoc" $2
	update-alternatives --install /usr/bin/javah javah "$1/bin/javah" $2
	update-alternatives --install /usr/bin/javap javap "$1/bin/javap" $2
	update-alternatives --install /usr/bin/javaws javaws "$1/bin/javaws" $2

	update-alternatives --install /usr/bin/jvisualvm jvisualvm "$1/bin/jvisualvm" $2
	update-alternatives --install /usr/bin/jconsole jconsole "$1/bin/jconsole" $2

	update-alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so mozilla-javaplugin.so "$1/jre/lib/amd64/libnpjp2.so" $2
}

