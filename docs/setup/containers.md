
# Containers

## Installation

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

    3. Bring the container up using `docker-compose up -d`

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

## What to do if the install fails

For troubleshooting and errors, use the site search or visit our [troubleshooting](/troubleshooting/) section to look for information about common error messages. If your installation fails and you are unable to resolve the problem by retrying, please contact <a href="mailto:support@enclave.io">support@enclave.io</a>.