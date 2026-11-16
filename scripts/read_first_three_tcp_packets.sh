#!/usr/bin/env bash
# Run in the CyberOps VM after Part 1 has created the capture.
set -euo pipefail

CAPTURE_FILE="/home/analyst/capture.pcap"

if [[ ! -r "$CAPTURE_FILE" ]]; then
  echo "Capture not found or not readable: $CAPTURE_FILE" >&2
  exit 1
fi

tcpdump -r "$CAPTURE_FILE" tcp -c 3
