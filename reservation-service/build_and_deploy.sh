#!/bin/bash 

mvn clean package -DskipTests -Pcloud

az spring-cloud app deploy \
  -n service  \
  --jar-path target/reservation-service-0.0.1-SNAPSHOT.jar



