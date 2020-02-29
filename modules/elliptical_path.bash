#!/usr/bin/env bash

elliptical_path() {
    if (($(pwd | sed "s|^$HOME||" | wc -c)
         > ${PROMPT_FRAMEWORK_ELLIPTICAL_PATH_LENGTH:-40})); then
        echo ".../\W"
    else
        echo "\w"
    fi
}

