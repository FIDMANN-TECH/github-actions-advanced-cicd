#!/bin/bash
PORT=5000 node server.js &

sleep 2

echo "Testing health endpoint..."
curl -i http://localhost:5000/health

kill %1
