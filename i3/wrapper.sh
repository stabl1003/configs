#!/bin/bash

# Run i3status and prepend custom brightness info
i3status | while read -r line; do
    myoutput="$("$HOME/.config/i3status/brightness.sh")"
    echo "$myoutput | $line" || exit 1
done
