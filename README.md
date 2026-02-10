# Ubuntu_backup_Project

#Project Description
This backup project automates daily backups of files in Linux using a shell script, tar, gzip, and cron. The source directory is compressed then stored in a backup directory and logs of each backup stored in logs directory.

# Directory Structure
backup_project/
|-- source_dir/      
|-- backup_dir/        
|-- logs/             
|-- backup.sh     


# Implementation steps
1. Created nested directories using 
(~/backup_project/{source_dir,backup_dir,logs})
2. Created Test_file1 and Test_file2 in source_dir directly while echo some content to those files
3.Written backup script using tar and gzip in backup.sh under backup_project directory
4. Given execute permission to backup.sh
5. Scheduled cron job for 9 AM daily
6. Verified results in backup_dir using
(ls~/backup_project/backup_dir)
7. Checked log files of each backup run using
(cat ~/backup_project/logs/backup.log)
8. Analyzed logs with journalctl


# Cron Job Used
0 9 * * * /home/monajaiswal/backup_project/backup.sh

# Output
- Daily compressed backup files (.tar.gz)
- Backup status logged in backup.log

# Tools Used
Linux, Bash Scripting, tar, gzip, cron
