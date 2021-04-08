# Getting Started — Attach Tags

Tags are free-form text labels attached to one or more systems in your account. Tags allow administrators to group systems together which share similar characteristics. Tags can be manually added to an enrolled system, or an Enrolment Key can be configured to apply an initial set of tags to enrolling systems.

The following graphic illustrates how a single tag might apply to several individual systems, in this example systems called `gitlab`, `teamcity` and a third system called `repo` are all members of the tag `org.build.ci-cd`.

![Illustration of how tags are applied to systems](/images/quick-start/tags.png)

> **Production use:** This guide suggests example Tags. You can (and should) create your Tags which reflect the structure of your organisation for use in production. Visit the [Policy and Tags](/management/policies-and-tags#naming) section of the handbook to learn more about creating, naming and managing Tags.

## Add tags

1. In the Portal, navigate to the `Systems` page and confirm at least two systems are enrolled and showing as connected.
   ![Illustration of how tags are applied to systems](/images/quick-start/system-details-pane.png)
2. Select the **first** system you enrolled to open the details pane and use the pencil icon (top-right of the pane) to enter edit mode. Give your first system a recognisable description (_e.g. Jane's Laptop_) and in the tags section type `org.workstations` and press Enter. Then add a second tag of `org.any`. Click Save and close the details pane.

    | System   | Description          | Tags                          |
    |----------|----------------------|-------------------------------|
    | System 1 | _e.g. Jane's Laptop_ | `org.workstations`<br />`org.any` |

3. Select the **second** system you enrolled to open the details pane. Enter edit mode and give your second system a recognisable description (_e.g. Web Server_). Then in the tags section for this system add the tag `org.servers` and a second tag of `org.any`. Save and close the details pane.

    | System   | Description          | Tags                          |
    |----------|----------------------|-------------------------------|
    | System 2 | _e.g. Web Server_    | `org.servers`<br />`org.any` |

Great! You've successfully tagged your first systems. Next [define a policy](/getting-started/define-policy) to establish connectivity between them.
