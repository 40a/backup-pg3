export BACKUP_PATH="backup_$(date +"%Y-%m-%d_%H:%M").sql.gz"
aws s3 cp - s3://$BUCKET/$BACKUP_PATH <&0

