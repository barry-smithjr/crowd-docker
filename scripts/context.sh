#!/bin/bash

if [ -z "$CATALINA_CONTEXT_PATH" ]
then
  mv ${CROWD_INSTALL_DIR}/apache-tomcat/conf/Catalina/localhost/crowd.xml ${CROWD_INSTALL_DIR}/apache-tomcat/conf/Catalina/localhost/ROOT.xml
else
  mv ${CROWD_INSTALL_DIR}/apache-tomcat/conf/Catalina/localhost/crowd.xml ${CROWD_INSTALL_DIR}/apache-tomcat/conf/Catalina/localhost/${CATALINA_CONTEXT_PATH}.xml
fi
