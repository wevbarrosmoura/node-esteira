#!/bin/bash

filebeat modules enable nginx
filebeat setup
service filebeat start
node webserver.js