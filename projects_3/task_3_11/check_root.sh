#!/bin/bash

check_root() {
    if [ ! "$EUID" -eq 0 ]; then
        echo "Warning: You are not running as root!"
        exit 1
    fi
}

check_root
