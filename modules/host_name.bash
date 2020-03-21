#!/usr/bin/env bash

# Print the host name, with options on "decorations".
#
# Environment Variables:
#   PF_HOST_NAME__ONLY_IF_REMOTE: only print if remote session (default: yes)
#   PF_HOST_NAME__DISPLAY_MODE: determines how the host name is displayed
host_name() {
    if [[ "${PF_HOST_NAME__ONLY_IF_REMOTE:-yes}" != "yes" \
          || "${SSH_CONNECTION}" ]]; then
        case "${PF_HOST_NAME__DISPLAY_MODE}" in
            "brackets")
                echo "[\h]"
                ;;
            "none")
                echo "\h"
                ;;
            *)
                echo "\h:"
                ;;
        esac
    fi
}

