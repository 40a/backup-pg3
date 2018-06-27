set -o pipefail
./make-backup.sh | ./export-backup.sh
PIPE_RESULT=$?
if [[ $PIPE_RESULT -ne 0 ]]; then
    echo "Backup error"
fi
exit $PIPE_RESULT
