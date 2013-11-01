#!/bin/bash
#
# PEGv2.sh written by Ish Sookun <http://hacklog.in/about>
# PEGv2 - Project Evil Genius version 2
# For details about this project please visit http://hacklog.in/peg.
#
# This work is licensed under a Creative Commons Attribution 3.0 Unported License.
# License details at http://creativecommons.org/licenses/by/3.0.
#

echo "Adding HACKLOG.in repository"
echo "..."
zypper ar http://lab.hacklog.in/openSUSE_13.1/repo HACKLOG.in
zypper --no-gpg-checks ref

echo "Install compilers & build tools"
echo "..."
zypper in gcc make

echo "Installing PERL modules"
echo "..."
perl -MCPAN -e 'install Net::DNS'
perl -MCPAN -e 'install Net::hostent'

echo "Installing Reconnaissance tools"
echo "..."
zypper in nmap zenmap MaltegoCaseFile-CE Maltego_tungsten_community
