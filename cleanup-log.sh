#!/bin/bash
# version 1 cleanup-log.sh 
# Cleanup your server logs in the /var/log directory
# In the example script, we are cleaning up the messages log file.

LOG_DIR=/var/log
ROOT_UID=0
LINES=50        # Default number of lines saved.
E_XCD=86        # Can't change directory?
E_NOTROOT=87    # Non-root exit error.

# Run as root, of course.
if [ "${UID}" -ne "${ROOT_UID}" ]
then
  echo "Must be root to run this script."
  exit ${E_NOTROOT}
fi

if [ -n "${1}" ]
# Test whether command-line argument is present (non-empty).
then
  lines=${1}
else
  lines=${LINES} # Default, if not specified on command-line.
fi

cd ${LOG_DIR}

# Check if in the right directory before messing with the log files.
if [ `pwd` != "$LOG_DIR" ]
then
  echo "Can't change to $LOG_DIR."
  exit ${E_XCD}
fi

# Save the last section of messages log file.
tail -n ${lines} messages > mesg.tmp
mv mesg.tmp messages

cat /dev/null > wtmp
echo "Log files cleaned up."

exit 0

# A zerop return value from the script upon exit indicates success
#+ to the shell.
