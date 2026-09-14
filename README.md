# Server Log Monitoring & Alert System

## 📌 Project Overview

The **Server Log Monitoring & Alert System** is a Linux-based Bash scripting project that automatically analyzes server authentication logs, detects failed and successful login attempts, generates a security report, and produces alerts when suspicious login activity exceeds a defined threshold.

This project demonstrates practical Linux system administration, Bash scripting, log analysis, automation, and basic server security monitoring.

---

## 🎯 Objectives

* Monitor server log files
* Detect failed login attempts
* Detect successful login attempts
* Generate security reports
* Maintain monitoring logs
* Detect suspicious authentication activity
* Generate security alerts
* Practice Linux command-line tools
* Build a portfolio-ready Linux administration project

---

## 🏗️ Project Architecture

```text
                 Linux Log File
                      │
                      ▼
              ┌───────────────┐
              │   monitor.sh  │
              └───────┬───────┘
                      │
             Analyze Log Entries
                      │
          ┌───────────┼───────────┐
          ▼           ▼           ▼
     Failed Login  Successful   Log Analysis
                    Login
          │           │
          └───────────┼───────────┘
                      ▼
               Security Report
                      │
             ┌────────┴────────┐
             ▼                 ▼
      security-report.txt   monitor.log
             │
             ▼
        Security Alert
```

---

## 📁 Project Structure

```text
server-log-monitor/
│
├── monitor.sh
├── config.sh
├── alert.sh
├── README.md
│
├── sample-logs/
│   └── auth.log
│
├── logs/
│   └── monitor.log
│
├── reports/
│   └── security-report.txt
│
└── tests/
    └── test.sh
```

---

## 🛠️ Technologies Used

* Linux
* Ubuntu / WSL Ubuntu
* Bash Shell Scripting
* `grep`
* `tail`
* `cat`
* `mkdir`
* `date`
* Linux file system
* Git
* GitHub

---

## ⚙️ Requirements

Before running the project, install:

* Ubuntu Linux
* Bash
* Git
* VS Code (optional)

Check Bash:

```bash
bash --version
```

Check Git:

```bash
git --version
```

---

## 🚀 Installation

Clone the repository:

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

Enter the project:

```bash
cd server-log-monitor
```

Give execution permission:

```bash
chmod +x monitor.sh
chmod +x alert.sh
chmod +x config.sh
```

---

## 🧪 Test Log File

For testing, the project uses:

```text
sample-logs/auth.log
```

Example log entries:

```text
Failed password for admin from 192.168.1.10
Failed password for admin from 192.168.1.10
Failed password for root from 192.168.1.20
Failed password for test from 192.168.1.20
Failed password for admin from 192.168.1.10
Accepted password for ubuntu from 192.168.1.5
```

---

## ▶️ Run the Application

Execute:

```bash
./monitor.sh
```

Example output:

```text
======================================
     SERVER LOG MONITORING SYSTEM
======================================

Log File: /home/user/projects/server-log-monitor/sample-logs/auth.log

Failed Login Attempts : 5
Successful Logins     : 1

ALERT: High number of failed login attempts!

======================================
Security report created successfully!
======================================
```

---

## 📊 Security Report

The application generates:

```text
reports/security-report.txt
```

View the report:

```bash
cat reports/security-report.txt
```

Example:

```text
========================================
        SERVER SECURITY REPORT
========================================

Generated: Mon Sep 14 17:10:00 IST 2026

LOGIN STATISTICS

Failed Login Attempts : 5
Successful Logins     : 1

RECENT FAILED LOGIN ATTEMPTS

Failed password for admin from 192.168.1.10
Failed password for admin from 192.168.1.10
Failed password for root from 192.168.1.20
Failed password for test from 192.168.1.20

SYSTEM STATUS

Security Status: WARNING
```

---

## 🚨 Alert System

The system has a configurable failed-login threshold.

Current configuration:

```bash
FAILED_LOGIN_THRESHOLD=5
```

If failed login attempts reach or exceed the threshold:

```text
ALERT: High number of failed login attempts!
```

This demonstrates a basic security monitoring mechanism.

---

## 📝 Monitoring Logs

The system stores monitoring activity in:

```text
logs/monitor.log
```

View it with:

```bash
cat logs/monitor.log
```

Example:

```text
Mon Sep 14 17:10:00 IST 2026 - Failed=5 Successful=1
```

---

## 🔍 Linux Commands Used

### grep

Search log entries:

```bash
grep "Failed password" sample-logs/auth.log
```

### grep -c

Count matching entries:

```bash
grep -c "Failed password" sample-logs/auth.log
```

### tail

Display recent failed login entries:

```bash
grep "Failed password" sample-logs/auth.log | tail -10
```

### cat

Read files:

```bash
cat reports/security-report.txt
```

### mkdir

Create directories:

```bash
mkdir -p logs reports
```

### chmod

Give execution permission:

```bash
chmod +x monitor.sh
```

---

## 🔐 Security Monitoring

The project can help identify:

* Repeated failed login attempts
* Suspicious authentication activity
* Potential brute-force attempts
* Successful authentication activity
* Authentication trends

> This project is intended for learning and basic monitoring. It is not a replacement for enterprise security platforms such as SIEM systems.

---

## 🔄 How It Works

```text
1. Read authentication log
        ↓
2. Search for failed logins
        ↓
3. Count failed attempts
        ↓
4. Search for successful logins
        ↓
5. Compare failed attempts with threshold
        ↓
6. Generate security report
        ↓
7. Save monitoring activity
        ↓
8. Generate alert when threshold is exceeded
```

---

## 🚀 Future Enhancements

The project can be upgraded with:

### Version 2

* Real-time log monitoring
* IP address extraction
* Top attacking IP addresses
* Nginx log monitoring
* HTTP 404/500 detection
* Automated daily reports

### Version 3

* Cron job automation
* Email alerts
* Telegram/Slack notifications
* Log rotation
* CSV/JSON reports
* Multiple log-file support

### Enterprise Version

```text
Linux Servers
      ↓
Log Collector
      ↓
Log Analyzer
      ↓
Security Rules
      ↓
Alert Engine
      ↓
Dashboard
      ↓
Email / Slack / Other Notifications
```

---

## 💼 Enterprise Use Cases

Similar concepts are used for:

* Linux server monitoring
* Security operations
* Authentication monitoring
* DevOps operations
* SRE monitoring
* Web server monitoring
* Infrastructure monitoring
* Incident detection

---

## 🎓 Learning Outcomes

After completing this project, you will understand:

* Linux log files
* Bash scripting
* Shell variables
* Conditional statements
* File handling
* Log analysis
* `grep` and `tail`
* Linux permissions
* Basic security monitoring
* Report generation
* Git/GitHub project management

---

## 🧑‍💻 Git Commands

Initialize Git:

```bash
git init
```

Check status:

```bash
git status
```

Add project files:

```bash
git add .
```

Commit:

```bash
git commit -m "Add server log monitoring and alert system"
```

Rename branch:

```bash
git branch -M main
```

Add GitHub repository:

```bash
git remote add origin YOUR_GITHUB_REPOSITORY_URL
```

Push:

```bash
git push -u origin main
```

---

## 📌 Project Highlights for Resume

**Server Log Monitoring & Alert System — Linux/Bash**

* Developed a Bash-based server log monitoring system for analyzing authentication events.
* Implemented failed and successful login detection using Linux command-line tools.
* Added configurable security thresholds and automated alerts.
* Generated security reports and monitoring logs.
* Practiced Linux administration, Bash scripting, log analysis, and security monitoring.

---

## ⭐ Project Status

```text
Version: 1.0

Status: Completed

Platform: Linux / Ubuntu / WSL

Language: Bash
```

---

## 📜 License

This project is created for educational, portfolio, and Linux administration practice purposes.
