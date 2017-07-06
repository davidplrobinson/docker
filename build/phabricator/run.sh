#!/bin/bash

docker run -dit -p 80:80 -e test=hello --name phab phab
