SOURCE="/home/monajaiswal/backup_project/source_dir" DESTINATION="/home/monajaiswal/backup_project/backup_dir" LOG="/home/monajaiswal/backup_project/logs/backup.log"

BACKUP_FILE="backup_$(date +%Y-%m-%d_%H%M-%S).tar.gz"

echo "Backing up files....."

tar -czf "$DESTINATION/$BACKUP_FILE" "$SOURCE"

if [ $? -eq 0 ]; then

echo "$(date): Backup Successful $BACKUP_FILE" >> "$LOG"

echo "Backup Successful"

else

echo "$(date): Backup Failed" >> "$LOG"

echo "Backup Failed"

fi
