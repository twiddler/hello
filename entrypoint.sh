#!/bin/sh -l

SPECNAME="hello.spec"

# Prepare build
rpmdev-setuptree
cd ~/rpmbuild
mv "/$SPECNAME" SPECS
spectool --get-files --sourcedir "SPECS/$SPECNAME"
dnf builddep -y "SPECS/$SPECNAME"

# Build source files
rpmbuild -bs "SPECS/$SPECNAME"

# Build binaries
rpmbuild -bb "SPECS/$SPECNAME"
