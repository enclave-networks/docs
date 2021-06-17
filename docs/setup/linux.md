# Linux

## Installation

=== "Ubuntu / Debian"

    <small>Requires at least Ubuntu 14.04 LTS or Debian 9.</small> 

    1. Install apt-transport-https

            sudo apt-get install apt-transport-https

    2. Add Enclave’s package signing key and repository to apt sources

            curl -fsSL https://packages.enclave.io/apt/enclave.stable.gpg | sudo apt-key add -
        curl -fsSL https://packages.enclave.io/apt/enclave.stable.list | sudo tee /etc/apt/sources.list.d/enclave.stable.list
        sudo apt-get update

    3. Install Enclave.

            sudo apt-get install enclave

    4. Enrol

            sudo enclave enrol

    5. Provide your `Default Enrolment Key` to complete the installation

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

            curl -fsSL https://packages.enclave.io/apt/enclave.stable.gpg | sudo apt-key add -
        curl -fsSL https://packages.enclave.io/apt/enclave.stable.list | sudo tee /etc/apt/sources.list.d/enclave.stable.list
        sudo apt-get update

    3. Install Enclave.

            sudo apt-get install enclave

    4. Enrol

            sudo enclave enrol

    5. Provide your `Default Enrolment Key` to complete the installation

<!--- ## Unattended Installation

Presently doesn't work.
 --->
 
## Starting and stopping Enclave

The Enclave installer creates a lightweight supervisor service set to run at system start which is responsible for starting the Enclave fabric. The supervisor service exists to start, stop and restart Enclave fabric in the background as daemon child processes.

The supervisor service responds to the Enclave CLI verbs `start` and `stop` to control the Fabric.

## Updating Enclave

=== "Ubuntu / Debian / Raspbian"

    Enclave is updated using the standard apt package manager.

        sudo apt-get update && sudo apt-get upgrade

=== "Other"

    Upgrade to the latest version of Enclave by running our quick-start script.

        bash <(curl -Ss https://install.enclave.io/setup.sh)

## Uninstalling Enclave

=== "Ubuntu / Debian / Raspbian"

    Remove the Enclave package while leaving configuration files on the system.

        sudo apt-get remove enclave

    Remove the Enclave package and any configuration files (including private any keys generated during enrolment).

        sudo apt-get purge enclave

    > **Note:** Enclave does not backup a system's private keys. Lost or deleted private keys are not recoverable. If a system's configuration and private keys are lost, to use that system with Enclave again it must be re-enrolled.

## What to do if the install fails

If an install goes horribly wrong or is interrupted, try re-running the Enclave `setup.sh` script to restart the process. If your installation fails and you are unable to resolve the problem by retrying, please contact <a href="mailto:support@enclave.io">support@enclave.io</a>.

For troubleshooting and errors, use the site search or visit our [troubleshooting](/troubleshooting/) section to look for information about common error messages.