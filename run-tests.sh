#!/bin/bash

# Example integration test script
# Replace this with your actual tests

response=$(curl -s -o /dev/null -w "%{http_code}" http://your-ecs-service-url)

if [ "$response" -ne 200 ]; then
  echo "Integration tests failed"
  exit 1
else
  echo "Integration tests passed"
  exit 0
fi
