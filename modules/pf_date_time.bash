#!/usr/bin/env bash

# Prints the date and time. Can be turned on and off as needed.
#
# Environment Variables:
#   PF_DATE_TIME: whether or not to enable (default: no)
#   PF_DATE_TIME__FORMAT: the format for strftime (default: %F %T)
pf_date_time() {
    if [[ "${PF_DATE_TIME:-no}" == "yes" ]]; then
        echo "[\D{${PF_DATE_TIME__FORMAT:-%F %T}}]"
    fi
}

