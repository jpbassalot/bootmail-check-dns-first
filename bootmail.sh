#! /bin/sh
# Wait until DNS services are working. Replace with the SMTP server you use for sending mail
while ! host email-smtp.us-west-2.amazonaws.com; do sleep 1; done

EMAIL="admin@example.com"
HN=$(hostname -f)
SUBJECT="$HN - System $1"

if [ "$1" = startup ]
then
    ACTION="started successfully at"
else
    ACTION="is shutting down. The Shutdown process started at"
fi

BODY="This is an automated message to notify you that %s %s.\nDate and Time: %s\n"

printf "$BODY" "$HN" "$ACTION" "$(date)" | mail -s "${SUBJECT}" "${EMAIL}"
