#!/usr/bin/env bash

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

