#!/bin/bash

# Interface Setup Script
#
# Author: Russell Toris - russell.toris@gmail.com

echo "  ____    _    ____  _     "
echo " / ___|  / \  |  _ \| |    "
echo "| |     / _ \ | |_) | |    "
echo "| |___ / ___ \|  _ <| |___ "
echo " \____/_/   \_\_| \_\_____|"
echo

echo
echo "CARL Crowd Manipulation Interface Setup"
echo "Author: Russell Toris - russell.toris@gmail.com"
echo "Author: Peter Mitrano - robotwizard@wpi.edu"
echo

# check the directory we are working in
DIR=`pwd`
if [[ $DIR != *CrowdManipulationInterface ]]
then
	echo "ERROR: Please run this script in the 'CrowdManipulationInterface' directory."
	exit;
fi

RMS="/var/www/rms"
if [ ! -d "$RMS" ]; then
	echo "ERROR: No RMS installation found in '$RMS'."
	exit;
fi

echo "Copying 'app' scripts to local RMS directory..."
cp app/Controller/*.php $RMS/Controller
cp -r app/View/* $RMS/View
cp -r app/webroot/css/* $RMS/webroot/css

echo "Installation complete!"
echo
