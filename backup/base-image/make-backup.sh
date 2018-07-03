#!/bin/sh

set -o pipefail

case "$1" in
	sql)
		pg_dumpall -h $PG_HOST -p $PG_PORT -U $PG_USER | gzip
		exit $?
		;;
	base)
		pg_basebackup -h $PG_HOST -p $PG_PORT -U $PG_USER -D - | gzip
		exit $?
		;;
	*)
		echo "Choose one of the available backup options [sql, base]" >&2
		exit 1
		;;
esac

