#!/bin/bash

echo "Killing SSH process..."
pkill sshd

echo "Disabling ssh.socket..."
systemctl disable ssh.socket

echo "Stopping SSH..."
systemctl stop ssh.socket

echo "Enabling SSH..."
systemctl enable ssh

echo "Restarting SSH..."
systemctl restart ssh

echo "SSH reset completed."
