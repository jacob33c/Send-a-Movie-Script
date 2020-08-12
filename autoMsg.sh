targetBuddyPhone='‭+‭15592137653‬'

while read targetMessage; do
echo $targetMessage

osascript <<EOF
tell application "Messages"
    set targetService to 1st service whose service type = iMessage
    set targetBuddy to buddy "$targetBuddyPhone" of targetService
    send "$targetMessage" to targetBuddy
end tell
EOF
done < movieScript.txt
