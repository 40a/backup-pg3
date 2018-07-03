FROM lodatol/cron

ADD export.sh /root/
ADD export-file.sh /root/

ENV CRON_ENTRY "* * * * * /root/export.sh"

