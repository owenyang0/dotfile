#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Turning off proxy"
  #sudo networksetup -setsocksfirewallproxystate wi-fi off
  sudo networksetup -setwebproxystate wi-fi off
  sudo networksetup -setsecurewebproxystate wi-fi off
elif [ $1 == "m" ]; then
  echo "Turning on proxy"
  sudo networksetup -setwebproxy Wi-Fi 127.0.0.1 12345
  sudo networksetup -setsecurewebproxy Wi-Fi 127.0.0.1 12345
  #sudo networksetup -setsocksfirewallproxystate wi-fi on
  sudo networksetup -setwebproxystate wi-fi on
  sudo networksetup -setsecurewebproxystate wi-fi on
  echo "Turning on mitmproxy"
  mitmproxy --no-mouse -p 12345
elif [ $1 == "o" ]; then
  echo "Turning on proxy"
  sudo networksetup -setwebproxy Wi-Fi 127.0.0.1 12345
  sudo networksetup -setsecurewebproxy Wi-Fi 127.0.0.1 12345
  #sudo networksetup -setsocksfirewallproxystate wi-fi on
  sudo networksetup -setwebproxystate wi-fi on
  sudo networksetup -setsecurewebproxystate wi-fi on
fi

