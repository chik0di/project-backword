<h1 align="center">🛡️ Automated Password File Backup Script </h1>

<h2 align="center">Scenario</h2>
You're the lead Linux developer at ABC International Inc., a cutting-edge technology company facing a daily bottleneck. Interns currently waste time and risk human error by manually identifying and backing up encrypted password files that have been updated in the last 24 hours on core servers.

Mission: Create a bash script (backup.sh) that automates this process daily, securely identifying and backing up any encrypted password files modified within the past 24 hours — no manual effort required.

<h2 align="center">Learning Objectives</h2>

- Demonstrate advanced shell scripting skills in a real-world automation task

- Work with file permissions, timestamp filtering, and secure backup routines

- Apply logic, string manipulation, conditional execution, and automation scheduling


<h2 align="center">📁 Project Structure</h2>

    ├── backup.sh # Main backup script
    ├── encrypted_passwords/ # Sample target directory with files
    ├── passwords_backup/ # Destination for backup archives


<h2 align="center">🚀 Features</h2> 

✅ Backup only recently modified files (past 24 hours)  
✅ Archive to compressed `.tar.gz` format  
✅ Verbose file-by-file logging  
✅ Works with absolute paths  
✅ Cron job support for daily automation  
✅ Graceful handling when no files need backup  

<h2 align="center">🧠 How It Works</h2> 

1. Accepts two arguments:
   - Target directory (source of files)
   - Destination directory (where backup archive is stored)
2. Checks for files in the target directory modified in the last 24 hours
3. Archives them into `backup-<timestamp>.tar.gz`
4. Moves the archive to the destination folder

---

<h2 align="center">⚙️ Usage</h2> 

### 🔧 Run manually: 

```
bash backup.sh /full/path/to/source /full/path/to/destination
```

You’ll see terminal output like:
```
Encrypted passwords are stored in the directory: /home/user/encrypted_passwords
Backups of these passwords are stored in the directory: /home/user/passwords_backup
Scanning files in /home/user/encrypted_passwords...
Backup complete: /home/user/passwords_backup/backup-1720183823.tar.gz
```

🕒 Automate with Cron
To schedule this backup daily at 3:15 PM, add the following to your crontab:
```
crontab -e
```
Then paste:
```
15 15 * * * /home/<your_username>/projects/backup_cron/backup.sh /home/<your_username>/projects/backup_cron/encrypted_passwords /home/<your_username>/projects/backup_cron/passwords_backup
```
📝 Replace <your_username> with your actual username.
