#!/usr/bin/env bash

prompt_framework() {
    local PF_EXIT_CODE=$?
    local prompt=()

    for module in "${PROMPT_FRAMEWORK_MODULES[@]}"; do
        prompt+=( $($module) )
    done

    PS1=$(IFS=" " echo "${prompt[@]} \$ ")
}

