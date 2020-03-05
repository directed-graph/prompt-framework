#!/usr/bin/env bash

elliptical_path() {
    local path=$(pwd | sed "s|^$HOME|~|")
    local length=${PROMPT_FRAMEWORK_ELLIPTICAL_PATH_LENGTH:-40}

    if (($(echo "$path" | wc -c) > $length)); then
        echo "...${path:$((${#path} - $length + 3)):$(($length - 3))}"
    else
        echo "$path"
    fi
}

