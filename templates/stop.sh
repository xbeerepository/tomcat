#!/bin/bash

if [ -f "$CATALINA_PID" ]; then
  catalina.sh stop {{ .pack.timeout }} -force 
fi

