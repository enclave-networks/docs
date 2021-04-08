# Getting Started — Define Policy

Now we'll create a Policy to enable connectivity between your tagged systems. Policies determine which systems can connect to each other, and which can't. Each Policy is composed of at least two tags, one assigned to the `Sender` side of the policy, and the other the `Receiver` side of Policy.

Any systems which are members of tags added to the `Sender` side of policy may originate traffic to any systems which are members of tags added to the `Receiver` side of the same policy.

Depending on how you arrange the tags in your Policy you can create either a partially connected, or a fully connected mesh.

> **Production use:** This guide suggests creating example policies. You can (and should) create your policies which reflect the structure of your organisation for use in production. Visit the [Policy and Tags](/management/policies-and-tags#naming) section of the handbook to learn more about creating, naming and managing Policy.

=== "Partially connected mesh"

    In a partially connected mesh, not all systems are necessarily connected to one another. 

    In this guide we'll define a policy that connects any systems tagged with `org.workstations` to any other systems tagged with `org.servers`. However, multiple systems which are members of the same tag policy won't connect them to one another (e.g. several systems with the same tag).

    1. In the Portal, navigate to the `Policies` page.
    2. Select the `Create a new policy` button and describe the new Policy as `Server Access`
    3. Add the `org.workstations` tag to the Sender side of the policy.
    4. Add the `org.servers` tag to the Receiver side of the policy.
    5. Save the policy.
    
        ![Illustration of how tags are applied to systems](/images/quick-start/policy-partially-connected-mesh.png)

    **Congratulations!** Your new policy will take effect immediately and Enclave will quickly build direct connectivity between your enrolled systems. You've successfully built your first Enclave connection.

=== "Fully connected mesh"

    In a fully connected mesh, all systems in the Policy are connected to one another. 

    In this guide we'll define a policy that connects any systems tagged with `org.any` to any other systems tagged with `org.any`.

    > **Production use:** Fully connected mesh networks may create large numbers of connections between participating systems. The number of connections is equal to `N∗(N−1)/2` (i.e. number of systems times the number of systems minus 1, divided by 2). In other words, a fully connected mesh of 16 systems will create 120 connections, but a mesh with 32 participants will create 496 connections. You should consider the capabilities of your underlying network infrastructure when deploying a fully connected mesh. [Learn more](/management/policies-and-tags#full-mesh).
    
    1. In the Portal, navigate to the `Policies` page.
    2. Select the `Create a new policy` button and describe the new Policy as `Full Mesh`
    3. Add the `org.any` tag to the Sender side of the policy.
    4. Add the `org.any` tag to the Receiver side of the policy.
    5. Save the policy.

        ![Illustration of how tags are applied to systems](/images/quick-start/policy-full-mesh.png)

    **Congratulations!** Your new policy will take effect immediately and Enclave will quickly build direct connectivity between your enrolled systems. You've successfully built your first Enclave connection.
    

Any future systems you Enrol and attach these tags to will automatically inherit the connectivity defined in this policy, helpful in auto-scaling scenarios to minimise the management overhead of connecting additional systems.

Now that you've got your first connection, see [next steps](/getting-started/next-steps) to learn more about what you can do with Enclave.