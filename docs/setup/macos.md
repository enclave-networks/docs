# MacOS

## Installation

; do not run as root
brew install enclave

## Starting and stopping Enclave

The Enclave installer creates a lightweight supervisor service set to run at system start which is responsible for starting the Enclave fabric. The supervisor service exists to start, stop and restart Enclave fabric in the background as daemon child processes.

The supervisor service responds to the Enclave CLI verbs [start](/cli/start) and [stop](/cli/stop) to control the Fabric.

## Updating Enclave

## Uninstalling Enclave

brew uninstall enclave

## What to do if the install fails

export HOMEBREW_NO_AUTO_UPDATE=1

rm /Users/username/Library/Caches/Homebrew/Cask/enclave-*.pkg


; shows if supervisor (& fabric) is running
ps -A | grep encalve