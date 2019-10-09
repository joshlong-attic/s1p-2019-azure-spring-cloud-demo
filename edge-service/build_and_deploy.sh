#!/bin/bash 

mvn clean package -DskipTests -Pcloud

az spring-cloud app deploy \
  -n s1p-demo-edge-service  \
  --jar-path target/edge-service-0.0.1-SNAPSHOT.jar



