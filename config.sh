#!/bin/bash

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

LOG_FILE="$PROJECT_DIR/sample-logs/auth.log"
OUTPUT_LOG="$PROJECT_DIR/logs/monitor.log"
REPORT_FILE="$PROJECT_DIR/reports/security-report.txt"

FAILED_LOGIN_THRESHOLD=5