#!/bin/bash

source /opt/rh/rh-maven33/enable

MAVEN_PROJECTS_DIR=~/maven-sync/projects

for PROJECT in `ls ${MAVEN_PROJECTS_DIR}` 
do
	echo "[${PROJECT}]"
	echo -e
	cd ${MAVEN_PROJECTS_DIR}/${PROJECT}
	mvn de.qaware.maven:go-offline-maven-plugin:resolve-dependencies
	echo -e
done

cd ~
