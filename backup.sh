SOURCE="/home/monajaiswal/backup_project/source_dir" DESTINATION="/home/monajaiswal/backup_project/backup_dir" LOG="/home/monajaiswal/backup_project/logs/backup.log"

BACKUP_FILE="backup_$(date +%Y-%m-%d %H%M-%S).tar.gz"

echo "Backing up files....."

tar -czf "SDESTINATION/SBACKUP_FILE" "$SOURCE"

if [ $? -eq 8]; then

echo "$(date): Backup Successful SBACKUP_FILE" >> "$LOG"

echo "Backup Successful"

else

echo "$(date): Backup Failed" >> "$LOG"

echo "Backup Failed"

fi
