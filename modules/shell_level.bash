#!/usr/bin/env bash

shell_level() {
    if (("$SHLVL" > 1)); then
        echo "[$SHLVL]"
    fi
}

