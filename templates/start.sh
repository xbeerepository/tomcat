#!/bin/bash

if [ ! -f "$CATALINA_PID" ]; then
  catalina.sh start
fi
