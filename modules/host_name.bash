#!/usr/bin/env bash

host_name() {
    if [[ "${PROMPT_FRAMEWORK_HOST_NAME_WITH_COLON:-yes}" == "yes" ]]; then
        echo "\h:"
    else
        echo "\h"
    fi
}

