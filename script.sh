#!/bin/bash

if [ ! -f /etc/passwd ]; then
    echo "Error: /etc/passwd file not found."
    exit 1
fi

echo "Users with /bin/bash as their CLI:"
grep '/bin/bash$' /etc/passwd | cut -d: -f1
