#!/bin/bash

MAVEN_PROJECTS_DIR=~/maven-sync/projects

#for PROJECT in `ls ${MAVEN_PROJECTS_DIR}` ; do echo "[${PROJECT}]"; echo -e ; cd ${MAVEN_PROJECTS_DIR}/${PROJECT}; mvn -U clean dependency:go-offline package; echo -e; done
#for PROJECT in `ls ${MAVEN_PROJECTS_DIR}` ; do echo "[${PROJECT}]"; echo -e ; cd ${MAVEN_PROJECTS_DIR}/${PROJECT}; mvn -U clean dependency:go-offline validate compile package install; mvn -U clean; echo -e; done
for PROJECT in `ls ${MAVEN_PROJECTS_DIR}` ; do echo "[${PROJECT}]"; echo -e ; cd ${MAVEN_PROJECTS_DIR}/${PROJECT}; mvn de.qaware.maven:go-offline-maven-plugin:resolve-dependencies ; echo -e; done

cd ~
