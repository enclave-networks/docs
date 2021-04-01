# Getting Started — Installation

In this guide we will start your journey with Enclave by showing you how to enrol your **first two** systems and show you how to use policy and tags to centrally manage private network connectivity between them.

![Quick start steps](/images/quick-start/steps.png)

## Prerequisites

To follow this guide and build your first connections with Enclave, you will need:

1. An Enclave account, it's [free to register](https://portal.enclave.io/account/register).
2. At least two computers, devices or containers where you can install software.

## Get an Enrolment Key

**Enrolment Keys** allow new systems or devices to join your Enclave account. Enrolment Keys can also used to apply initial configuration settings (such as [Policy and Tags](handbook/policies-and-tags.md)) to new systems as they enrol.

1. Login to your account in the [Enclave Portal](https://portal.enclave.io/).
2. Navigate to the [Enrolment Keys](https://portal.enclave.io/my/keys) page and select the `Default Enrolment Key` from the table. In the details pane, select [View key](https://portal.enclave.io/my/keys/1) and make a note of the 30 character Enrolment Key as you will need it to install Enclave.

> **Security note:** Enrolment keys should be treated as secrets; Handle, share and store your Enrolment Keys as you would any other organisational secret.

<!-- -->

> **Production use:** This guide uses a `Default Enrolment Key` which was automatically created when you registered for an account. You can (and should) create your own Enrolment Keys for use in production. Visit the [Enrolment Keys](/handbook/enrolment.md) section of the handbook to learn more about creating and managing Enrolment Keys.

## Install Enclave

For this guide you will need to install Enclave on **two** separate devices, systems or containers. Use the same `Default Enrolment Key` key to enrol **both** systems.

=== "Windows"

    1. Download the Windows installer from the [Downloads](https://portal.enclave.io/download) section of your account.
    2. Run the installer. You will be prompted for privilege elevation if necessary.
    3. Provide your `Default Enrolment Key` to complete the installation.

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

        1. Create a `docker-compose.yml` file:

            ```yaml
            version: '3.1'

            services:
              enclave-fabric:
                container_name: fabric
                image: enclavenetworks/enclave:latest
                restart: always

                cap_add:
                  - NET_ADMIN
                devices:
                  - /dev/net/tun
                environment:
                  ENCLAVE_ENROLMENT_KEY: XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
                volumes:
                  - enclave-config:/etc/enclave/profiles
                  - enclave-logs:/var/log/enclave

            volumes:
              enclave-config:
              enclave-logs:
            ```

        2. Replace `XXXXX-XXXXX-XXXXX-XXXXX-XXXXX` with your `Default Enrolment Key`

        3. Bring the container online using `docker-compose up -d`

        4. Verify Enclave is running insider the container with `docker exec fabric enclave status`

    === "Kubernetes"

        1. Add the **enclave-sidecar** to your pod yaml file under the `containers:` section. For example, if your pod contains an nginx container:

            ```yaml
            spec:
              containers:
              - name: nginx-container
                image: nginx:1.7.9
                ports:
                  - containerPort: 80
            ```

             Add the **enclave-sidecar** definition to below your existing pod:

            ```yaml
            spec:
              containers:
              - name: nginx-container
                ...
                
              - name: enclave-sidecar
                image: enclavenetworks/enclave:latest
                env:
                  - name: "ENCLAVE_ENROLMENT_KEY"
                    value: "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
                securityContext:
                  capabilities:
                    add: ['NET_ADMIN']
                volumeMounts:
                  - name: tun
                    mountPath: /dev/net/tun
              volumes:
                - name: tun
                  hostPath:
                    type: 'CharDevice'
                    path: /dev/net/tun
            ```

            > See [pod.yaml](https://github.com/enclave-networks/kubernetes/blob/main/examples/nginx-enclave-sidecar/pod.yaml) for a complete example. 

        2. Replace `XXXXX-XXXXX-XXXXX-XXXXX-XXXXX` with your `Default Enrolment Key`

        3. Push your changes to the cluster using `kubectl apply` or your preferred method

=== "Network Attached Storage"

    Select your device:

    === "Synology NAS"

        1. We have beta support for Synology NAS drives (running on DSM 7.0 or later) via docker. Please follow our guide to [installing Enclave on your Synology NAS drive](/tutorials/how-to-securely-access-your-synology-nas-drive-with-enclave/).

**Congratulations!** You've successfully enrolled a new system to your Enclave account. Once you've enrolled at least two systems, [attach tags](/getting-started/attach-tags) to your newly enrolled systems.
