#!/bin/bash

mkdir script
sed s/INCORRECT_PASSWORD/ACCESS_DENIED/ LogA.txt > access_denied.txt
awk '{print $4, $6}' FILL IN > filtered_logs.txt

