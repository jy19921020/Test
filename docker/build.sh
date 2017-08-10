#!/usr/bin/env bash
rm -rf build
mkdir build
cp ../target/jenkins-ci-demo-*.jar app.jar
docker build -t jy19921020/Test .
rm -rf build