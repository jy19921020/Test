#!/usr/bin/env bash
rm -rf build
mkdir build
cp ../target/jenkins-ci-demo-*.jar app.jar
#ͨ��docker build -t ָ��dockerfile ���������� �﷨��docker build [OPTIONS] PATH | URL    PATH �� . ���ǵ�ǰĿ¼
docker build -t test/jenkins-ci-demo .
rm -rf build