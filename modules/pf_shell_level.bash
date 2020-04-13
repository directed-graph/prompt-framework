#!/usr/bin/env bash

# Prints the current shell level, enclosed by brackets.
#
# Environment Variables: None
pf_shell_level() {
    if (("$SHLVL" > 1)); then
        echo "[$SHLVL]"
    fi
}

