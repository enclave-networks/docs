# Enrol at least two Systems

**Enrol at least two different systems.**

Follow the installation guide for each operating system where you're installing Enclave. For this guide you will need to install Enclave on two separate systems.

Use the `Default Enrolment Key` key to enrol **both** systems.

=== "Windows"

    1. Download the Windows installer from the [Downloads](https://portal.enclave.io/download) section of your account.
    2. Run the installer. You will be prompted for privilege elevation if necessary.
    3. Provide your `Default Enrolment Key` to complete the installation.
    4. Once installed, Enclave will start and add a new tray icon to your system tray. If the Enclave tray icon is not visible, click the up arrow to find it in the hidden system tray overflow area.
        ![/images/install/enclave-tray-icon.png](/images/install/enclave-tray-icon.png)
    5. Right click on the tray icon when you need to open Enclave.

=== "Linux"

    Select your distribution:

    === "Ubuntu / Debian"

        1. Install apt-transport-https

                sudo apt-get install apt-transport-https

        2. Add Enclave’s package signing key and repository to apt sources

                curl -fsSL https://packages.enclave.io/apt/enclave.stable.gpg | sudo apt-key add
            curl -fsSL https://packages.enclave.io/apt/enclave.stable.list | sudo tee /etc/apt/sources.list.d/enclave.list
            sudo apt-get update

        3. Install Enclave.

                sudo apt-get install enclave

        4. Provide your `Default Enrolment Key` to complete the installation

    === "CentOS / RHEL"
    
        1. Install Enclave using our quick-start script

                bash <(curl -Ss https://install.enclave.io/setup.sh)

        2. Provide your `Default Enrolment Key` to complete the installation

    === "Fedora"

        1. Install Enclave using our quick-start script

                bash <(curl -Ss https://install.enclave.io/setup.sh)

        2. Provide your `Default Enrolment Key` to complete the installation

    === "Amazon Linux"

        1. Install Enclave using our quick-start script

                bash <(curl -Ss https://install.enclave.io/setup.sh)

        2. Provide your `Default Enrolment Key` to complete the installation

    === "Arch Linux"

        1. Install Enclave using our quick-start script

                bash <(curl -Ss https://install.enclave.io/setup.sh)

        2. Provide your `Default Enrolment Key` to complete the installation

    === "Raspbian"

        1. Install apt-transport-https

                sudo apt-get install apt-transport-https

        2. Add Enclave’s package signing key and repository to apt sources

                curl -fsSL https://packages.enclave.io/apt/enclave.stable.gpg  | sudo apt-key add -
            curl -fsSL https://packages.enclave.io/apt/enclave.stable.list | sudo tee /etc/apt/sources.list.d/enclave.list
            sudo apt-get update

        3. Install Enclave.

                sudo apt-get install enclave

        4. Provide your `Default Enrolment Key` to complete the installation

=== "Containers"

    Select your platform:

    === "Docker"

    === "Kubernetes"

=== "Network Attached Storage"

    Select your device:

    === "Synology NAS"


**Congratulations!** You've successfully enrolled a new system to your Enclave account. Once you've enrolled at least two systems to your account, [attach tags](getting-started/attach-tags.md) to your newly enrolled systems.