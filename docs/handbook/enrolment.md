
## About enrolment keys

When you first registered for an account:

- We automatically created an **initial enrolment key** called `Default Enrolment Key`. Enrolment keys allow you to enrol new systems to your account and can (optionally) apply an initial set of tags to systems as they enrol.
- We automatically created a **default tag** called `All Systems`. Tags are text labels which can be attached to one or more systems, allowing administrators to group together systems with similar characteristics.  
- We automatically created a **default policy** called `Universe`. Policies determine which systems are connected to each other. Each policy is composed of sender tags and receiver tags. The Universe policy sets the `All Systems` tag on both the sender and receiver side of the policy.

In its default state, your **Universe** policy has the same tag (**All Systems**) set on both sides of the policy. Having the same tag on both sides of a policy means that any systems with that tag attached will be connected to one another and allowed to send traffic to their peers.

Since the **Default Enrolment Key** is configured to automatically apply the **All Systems** tag to new systems as they enrol, any systems enrolled using this key automatically gain full-mesh connectivity across your organisation.

You can customise this configuration at any time, but to move to the next step and install Enclave you will need to obtain an enrolment key from your account on the Portal.


1. Your `Default Enrolment Key` is configured for manual approval of new enrolments. When new systems are enrolled using this key they will remain isolated and disabled from your wider account, until enrolment approval is granted by an account Administrator. To provide approval, visit the [**Unapproved systems**](https://portal.enclave.io/my/unapproved-systems) page, select both systems and click **Approve**.
