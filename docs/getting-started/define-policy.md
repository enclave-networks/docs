
# Define Policy

Policies determine which systems can connect to each other via Enclave. Each policy is composed of one or more Tags which are assigned either to the Sender or Receiver side of  policy. Any systems which fall under the Sender side tags of a policy can send traffic to any systems which fall under the Receiver side tags.

/ **Production use:** This guide uses a `Quick start guide - full mesh` policy. You can (and should) create your own Policy for use in production. To learn more about how to create and manage Tags in your organisation, please refer to the [Policy and Tags](/handbook/tags-and-policies.md) section of this handbook. 

1. Create a new policy called `Quick start guide - full mesh`
2. Add the `quickstart` tag to the Sender and Receiver side of the policy.
3. Save the policy.
4. Check connectivity.

![Illustration of how tags are applied to systems](/images/quick-start/create-policy.png)

