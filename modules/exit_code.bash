#!/usr/bin/env bash

exit_code() {
    if ((${PF_EXIT_CODE:-0} != 0)); then
        local color_red="\[\e[0;31m\]"
        local color_off="\[\033[0m\]"
        echo "(${color_red}${PF_EXIT_CODE}${color_off}) "
    fi
}

