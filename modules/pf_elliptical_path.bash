#!/usr/bin/env bash

# Print the current path, limited to some maximum length. Truncation, if needed,
# will be done from the beginning of the path, and an ellipsis prepended.
#
# Environment Variables:
#   PF_ELLIPTICAL_PATH__LENGTH: desired maximum length of output (default: 40)
pf_elliptical_path() {
    local path=$(pwd | sed "s|^$HOME|~|")
    local length=${PF_ELLIPTICAL_PATH__LENGTH:-40}

    if (($(echo "$path" | wc -c) > $length)); then
        echo "...${path:$((${#path} - $length + 3)):$(($length - 3))}"
    else
        echo "$path"
    fi
}

