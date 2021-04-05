#!/usr/bin/env bash

set -xeuo pipefail

if [[ -e "/home/$(whoami)/ngrok_flag_braxami/enable_ssh" && "$(sudo systemctl is-active ngrok.service)" == 'inactive' ]]; then
  sudo systemctl restart ngrok.service
elif [[ ! -e "/home/$(whoami)/ngrok_flag_braxami/enable_ssh" ]]; then
  sudo systemctl stop ngrok.service
fi
