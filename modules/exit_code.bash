#!/usr/bin/env bash

# Print the exit code, if non-zero, in red enclosed by parentheses.
#
# Environment Variables:
#   PF_EXIT_CODE__COLOR: the color (default: \[\e[0;31m\])
#   PF_EXIT_CODE: the exit code
exit_code() {
    if ((${PF_EXIT_CODE:-0} != 0)); then
        local color_on="${PF_EXIT_CODE__COLOR:-\[\e[0;31m\]}"
        local color_off="\[\033[0m\]"
        echo "(${color_on}${PF_EXIT_CODE}${color_off}) "
    fi
}

