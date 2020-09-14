#!/bin/bash

find {{ .pack.catalinaHome }}/conf {{ .pack.catalinaHome }}/webapps/docs {{ .pack.catalinaHome }}/webapps/examples -type f \( -name "*.json" -o -name "*.xml" -o -name "*.html" -o -name "*.txt" \) -exec sed -i "s@8080@{{ .pack.httpPort }}@g" {} \;
