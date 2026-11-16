#!/usr/bin/env bash
# Run on Mininet host H1 in the CyberOps lab environment.
set -euo pipefail

CAPTURE_FILE="/home/analyst/capture.pcap"
INTERFACE="H1-eth0"

echo "Starting a maximum 50-packet capture on ${INTERFACE}."
echo "While this command runs, browse to http://172.16.0.40 in Firefox."
sudo tcpdump -i "$INTERFACE" -v -c 50 -w "$CAPTURE_FILE"
echo "Capture command finished. Expected output file: $CAPTURE_FILE"
