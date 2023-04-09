#!/bin/bash

find ${CATALINA_HOME}/conf ${CATALINA_HOME}/webapps/docs ${CATALINA_HOME}/webapps/examples -type f \( -name "*.json" -o -name "*.xml" -o -name "*.html" -o -name "*.txt" \) -exec sed -i "s@8080@{{ .httpPort }}@g" {} \;
