#!/bin/bash

PROJECT_DIR="$(dirname "$0")"

source "$PROJECT_DIR/config.sh"

echo "======================================"
echo "     SERVER LOG MONITORING SYSTEM"
echo "======================================"

echo "Log File: $LOG_FILE"
echo "Started : $(date)"
echo

# Check log file
if [ ! -f "$LOG_FILE" ]; then
    echo "ERROR: Log file not found!"
    echo "Expected: $LOG_FILE"
    exit 1
fi

# Check output directories
mkdir -p "$PROJECT_DIR/logs"
mkdir -p "$PROJECT_DIR/reports"

FAILED_LOGINS=$(grep -c "Failed password" "$LOG_FILE")
SUCCESS_LOGINS=$(grep -c "Accepted" "$LOG_FILE")

echo "Failed Login Attempts : $FAILED_LOGINS"
echo "Successful Logins     : $SUCCESS_LOGINS"

# Generate report
{
    echo "SERVER SECURITY REPORT"
    echo "======================="
    echo "Date: $(date)"
    echo
    echo "Failed Login Attempts: $FAILED_LOGINS"
    echo "Successful Logins: $SUCCESS_LOGINS"
    echo
    echo "Recent Failed Logins:"
    grep "Failed password" "$LOG_FILE" | tail -10
} > "$REPORT_FILE"

# Save monitoring log
echo "$(date) - Failed: $FAILED_LOGINS | Successful: $SUCCESS_LOGINS" >> "$OUTPUT_LOG"

echo
echo "Report created:"
echo "$REPORT_FILE"

echo
echo "Monitoring log:"
echo "$OUTPUT_LOG"

if [ "$FAILED_LOGINS" -ge "$FAILED_LOGIN_THRESHOLD" ]; then
    echo
    echo "⚠️ ALERT: High number of failed login attempts!"

    bash "$PROJECT_DIR/alert.sh" \
    "Detected $FAILED_LOGINS failed login attempts."
else
    echo
    echo "Status: NORMAL"
fi

echo
echo "Monitoring completed."
