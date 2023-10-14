#!/bin/bash

! sudo apt update
! sudo apt install -y python3-pip
! pip3 install -r requirements.txt
! python3 payload_dumper.py payload.bin
