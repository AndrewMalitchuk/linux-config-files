#!/bin/bash

# Returns count of connected devices to your network
# N.B. Count including ip address of router

nmap -sP 192.168.0.0/24 | grep -c "Host is up"
