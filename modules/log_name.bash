#!/usr/bin/env bash

# Prints the current username if it is different from the logged in username.
#
# Environment Variables: None
log_name() {
    if [[ "$(logname)" != "$(whoami)" ]]; then
        echo "[$(logname) -> $(whoami)]"
    fi
}
