<h1 align="center">Automated Daily Encrypted Password File Backup (backup.sh)</h1>

Project Overview
This project is the final capstone for the "Advanced Linux Shell Scripting" course. It simulates a real-world task assigned to a lead Linux developer at a high-tech company.

<h2 align="center">Scenario</h2>
You're the lead Linux developer at ABC International Inc., a cutting-edge technology company facing a daily bottleneck. Interns currently waste time and risk human error by manually identifying and backing up encrypted password files that have been updated in the last 24 hours on core servers.

Your mission:
Create a bash script (backup.sh) that automates this process daily, securely identifying and backing up any encrypted password files modified within the past 24 hours — no manual effort required.

<h2 align="center">Learning Objectives</h2>
By completing this hands-on lab, you will:

Demonstrate advanced shell scripting skills in a real-world automation task

Work with file permissions, timestamp filtering, and secure backup routines

Gain experience reviewing and grading peer-submitted Linux automation scripts

Apply logic, string manipulation, conditional execution, and automation scheduling

<h2 align="center">Features</h2>


Automatically detects encrypted password files (*.gpg, *.enc, etc.)

Checks file modification timestamps (past 24 hours)

Logs backup operations to a time-stamped log file

Uses robust error handling and permissions checking

Prepares for cron-based automation (daily scheduling)

