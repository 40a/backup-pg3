set -o pipefail
pg_dumpall -h $PG_HOST -p $PG_PORT -U $PG_USER | gzip
exit $?
