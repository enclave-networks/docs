
# Getting Started — Define Policy

**Policies** determine which systems can connect to each other via Enclave, and which can't.

Each policy is composed of at least two Tags. Each tag is assigned either to the **Sender** or the **Receiver** side of  Policy.

Any systems which are members of tags on the Sender side of policy are able to originate traffic (subject to Access Control Lists) to any systems which are members of tags on the Receiver side of the same policy.


=== "Partially connected mesh"

    1. Create a new policy called `Org Server Access`
    2. Add the `org.quickstart.workstations` tag to the Sender side of the policy.
    3. Add the `org.quickstart.servers` tag to the Receiver side of the policy.
    4. Save the policy.

    ![Illustration of how tags are applied to systems](/images/quick-start/create-policy.png)

=== "Fully connected mesh"

    1. Create a new policy called `Org Full Mesh`
    2. Add the `org.quickstart.any` tag to the Sender side of the policy.
    3. Add the `org.quickstart.any` tag to the Receiver side of the policy.
    4. Save the policy.

    ![Illustration of how tags are applied to systems](/images/quick-start/create-policy.png)


> **Production use:** This guide suggests example policies. You can (and should) create your policies which reflect the structure of your organisation for use in production. Visit the [Policy and Tags](handbook/policies-and-tags.md) section of the handbook to learn more about creating and managing Policy.
