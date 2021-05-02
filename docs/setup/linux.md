# Linux

## Installation

=== "Ubuntu / Debian"

    <small>Requires at least Ubuntu 14.04 LTS or Debian 9.</small> 

    1. Install apt-transport-https

            sudo apt-get install apt-transport-https

    2. Add Enclave’s package signing key and repository to apt sources

            curl -fsSL https://packages.enclave.io/apt/enclave.stable.gpg | sudo apt-key add
        curl -fsSL https://packages.enclave.io/apt/enclave.stable.list | sudo tee /etc/apt/sources.list.d/enclave.stable.list
        sudo apt-get update

    3. Install Enclave.

            sudo apt-get install enclave

    4. Provide your `Default Enrolment Key` to complete the installation

=== "CentOS / RHEL"

    <small>Requires at least CentOS 7.6 or RHEL 7.</small> 

    1. Install Enclave using our quick-start script

            bash <(curl -Ss https://install.enclave.io/setup.sh)

    2. Provide your `Default Enrolment Key` to complete the installation

=== "Fedora"

    <small>Requires at least Fedora 32.</small> 

    1. Install Enclave using our quick-start script

            bash <(curl -Ss https://install.enclave.io/setup.sh)

    2. Provide your `Default Enrolment Key` to complete the installation

=== "Amazon Linux"

    <small>Requires at least Amazon Linux 2018.03.</small> 

    1. Install Enclave using our quick-start script

            bash <(curl -Ss https://install.enclave.io/setup.sh)

    2. Provide your `Default Enrolment Key` to complete the installation

=== "Arch Linux"

    <small>Requires at least Arch Linux 2020.08.01.</small> 

    1. Install Enclave using our quick-start script

            bash <(curl -Ss https://install.enclave.io/setup.sh)

    2. Provide your `Default Enrolment Key` to complete the installation

=== "Raspbian"

    <small>Requires at least Raspbian 10 (buster).</small> 

    1. Install apt-transport-https

            sudo apt-get install apt-transport-https

    2. Add Enclave’s package signing key and repository to apt sources

            curl -fsSL https://packages.enclave.io/apt/enclave.stable.gpg  | sudo apt-key add -
        curl -fsSL https://packages.enclave.io/apt/enclave.stable.list | sudo tee /etc/apt/sources.list.d/enclave.stable.list
        sudo apt-get update

    3. Install Enclave.

            sudo apt-get install enclave

    4. Provide your `Default Enrolment Key` to complete the installation

<!--- ## Unattended Installation

Presently doesn't work.
 --->
 
## Starting and stopping Enclave

The Enclave installer creates a lightweight supervisor service set to run at system start which is responsible for starting the Enclave fabric. The supervisor service exists to start, stop and restart Enclave fabric in the background as daemon child processes.

The supervisor service responds to the Enclave CLI verbs `start` and `stop` to control the Fabric.

## Updating Enclave

Enclave is updated using the standard apt package manager commands `apt-get update && apt-get upgrade`.

## Uninstalling Enclave

**TODO** `apt-get remove` and `apt-get purge`

> **Note:** Enclave does not backup a system's private keys. Lost or deleted private keys are not recoverable. If a system's configuration and private keys are lost, to use that system with Enclave again it must be re-enrolled.

## What to do if the install fails



