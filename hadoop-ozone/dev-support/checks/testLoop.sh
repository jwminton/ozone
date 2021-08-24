#!/bin/bash

cd hadoop-hdds/server-scm
pwd
count=${1:-2}
while [ $count -gt 0 ] ; do
    mvn -Dtest=*TestSCMUpdateServiceGrpcServer test
    count=$(($count-1))
done
